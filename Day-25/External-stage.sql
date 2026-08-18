-->Loading data files from S3 (Amazon)

use database snowflake_practise;

-->STEP.1 Create a Data format here craete a Format that user dot know what was the client is uploding..

desc file format DATA_INSGEST;

create or replace file format s3_format
type=CSV
PARSE_HEADER=TRUE
DATE_FORMAT='YYY-MM-DD'
RECORD_DELIMITER='\n'
FIELD_DELIMITER=','
FIELD_OPTIONALLY_ENCLOSED_BY='"'
ERROR_ON_COLUMN_COUNT_MISMATCH=false
ENCODING='UTF8';

-->STEP2 Create a Stage (External Stage) Verify  after describing weather it is external or internal

create Stage s3_stage
file_format=s3_format
url='**';

desc stage @s3_stage;
show stages;

list @s3_stage; --Access Denied
--Here we Succefully linked the S3 and stagee but need to give permissions to access the bucket files in aws it is like a Contract

-->Step.3 Create a table 

CREATE TABLE customers (
    CustomerID       VARCHAR(10)     PRIMARY KEY,
    CustomerName     VARCHAR(100)    NOT NULL,
    Segment          VARCHAR(50)     NOT NULL,
    City             VARCHAR(100)    NOT NULL,
    Country          VARCHAR(50)     NOT NULL,
    Phone            VARCHAR(30)     NOT NULL,
    RegisteredDate   DATE            NOT NULL
);


-->Cant use Copy into command directly because need to seet some policiess..

-->Step.4 Contract setting up Policies


-->Create a USER to generate security crdentials for best practises and security concerns
-->Create a USER and Role
--> Right after creating role Create Access keyy for credintials

---- Access key:"get from aws user " Secret Key:

-->Now use copy to command and to load data into the table


-->Step.5 loading fiels using copy into

COPY INTO CUSTOMERS 
FROM @s3_stage
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE
CREDENTIALS = (AWS_KEY_ID='**' AWS_SECRET_KEY='**');


-->Everything lodaded Succefully
select *from customers;

-->If user wants to read the data before copying to the actual table i.e in staging area

-->Step.6 Storage intigation (no need to always pass the crdentials..)

create or replace storage integration ec2_in
type =external_stage
storage_provider=s3
enabled=true
Storage_aws_role_arn='role url from aws'
Storage_allowed_locations=('Bucket url')



desc storage integration ec2_in;

-->Copy teh user arm and external id and past it into aws role that was created before 

-->Step.7 -->Create anotehr stage and the pass storage integration to it 

/*Create stage s3_storage_integration 
    file_format=<File format>
    storage_integration=<Name>
    url=<S3 bucket URL>*/

-->Querying

select top 10 *from customers;

--->find customer who Created their profile

select top 1 customerid,customername,country,Registereddate from customers
order by Registereddate desc;

-->Note*-->Use your Credentials 
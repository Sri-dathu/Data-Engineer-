-->SnowPipe :Used for continuoes Integration From External Storage

use database SNOWFLAKE_PRACTISE;

describe file format s3_format;


-->Add a new File into the AWS so Create a Table 

CREATE TABLE suppliers (
    SupplierID       VARCHAR(10)     PRIMARY KEY,
    SupplierName     VARCHAR(150)    NOT NULL,
    Category         VARCHAR(50)     NOT NULL,
    City             VARCHAR(100)    NOT NULL,
    Country          VARCHAR(50)     NOT NULL,
    ContractStart    DATE            NOT NULL,
    Rating           NUMBER(2,1)     NOT NULL
);

COPY INTO suppliers FROM 
@s3_stage
files=('suppliers.csv') -->file refering forr
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE
CREDENTIALS = (AWS_KEY_ID='***'AWS_SECRET_KEY='****'); -->Aws Credintails

select *from suppliers;

-->Now I have Succesfully loaded The data From AWS
list stage @

CREATE PIPE S3_Pipe
AUTO_INGEST = TRUE
AS 
COPY INTO suppliers FROM
@s3_stage/suppliers.csv
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;

desc pipe s3_pipe;

-->>So Create and Link notifications in AWS

-->arn:aws:sqs:us-east-1:781425929845:sf-snowpipe-AIDA3L4E5NZ2SMHJPTNCH-RaFTy8EEMxtffU6L31dV6A so use this link and creat sns queue

SELECT SYSTEM$PIPE_STATUS('S3_Pipe');

show pipes;
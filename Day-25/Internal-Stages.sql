-->Two Types of Stages Internal and External Stages
use DATABASE SNOWFLAKE_PRACTISE;

-->Steps to Create a Stage and how to load dat into a Table using Stage
-->Set up a CLI SnowSQL to upload data using PUT Command and GET data from SF


-->Step.1 Create a File Format

desc file format CSV_FORMAT;

CREATE OR REPLACE FILE format Data_insgest
type=CSV
RECORD_DELIMITER='\n'
FIELD_DELIMITER=','
SKIP_HEADER=1
DATE_FORMAT='YYYY-MM-DD'
FIELD_OPTIONALLY_ENCLOSED_BY='"'
ERROR_ON_COLUMN_COUNT_MISMATCH=FALSE;

-->Step.2 Create a Table

CREATE TABLE orders (
    OrderID         VARCHAR(10)     PRIMARY KEY,
    EmployeeID      VARCHAR(10)     NOT NULL,
    ProductID       VARCHAR(10)     NOT NULL,
    Quantity        NUMBER(5,0)     NOT NULL,
    TotalAmount     NUMBER(12,2)    NOT NULL,
    OrderDate       DATE            NOT NULL,
    Status          VARCHAR(20)     NOT NULL
);
select*from orders;

-->Step.3 Create a stage using GUI or CLI I will be using CLI for Best Practises

CREATE STAGE orders_Stage 
file_FORMAT=Data_insgest;

ALTER STAGE IF EXISTS orders_Stage 
RENAME TO Stage_Csv;

list @Stage_Csv;

-->SELECT from STAGE
DESCRIBE stage Stage_Csv;

select $1,$5,$7 from @stage_csv/orders.csv.gz

-->Step.4 Use put to Load data into staged area

-->put file:C:\Users\jithu\Downloads\orders.csv @Orders_Stage;<-- only valid in Snowsql cli

-->Step.5 Copy to the table using Copy method

--

COPY INTO orders FROM @stage_csv/orders.csv.gz
purge = TRUE -->Removes right after coyping data to the permenent table
-->VALIDATION_MODE = 'RETURN_ALL_ERRORS' to validate al the errors 
-->ON_ERROR=CONTINUE used to skip the errors
-->MATCH_BY_COLUMN=CASE_INSENSITIVE matches with column when the uploaded table is not know 
-->INCLUDE_METADATA=METADATA(FILENAME=METADATA$FILENAME)  to include metadata of the file


SELECT *FROM ORDERS;

-->checkis stage is present or not

list @stage_Csv; -->no files or in Staging Area

Drop stage orders_stage;


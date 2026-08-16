-->Loading Structured and UnStructured Files<--

use DATABASE SNOWFLAKE_PRACTISE;

-->Load,Formating and Solving Errors the files 

CREATE TABLE employee_csv (
    EmployeeID     VARCHAR(10)     PRIMARY KEY,
    Name           VARCHAR(100)    NOT NULL,
    Department     VARCHAR(50)     NOT NULL,
    Designation    VARCHAR(50)     NOT NULL,
    Salary         NUMBER(10,2)    NOT NULL,
    JoiningDate    DATE            NOT NULL
);

--Creating File Formating (A file FORMAT is used to upload any type of data into the database according to the givem FORMAT)
--CSVFile- Format


CREATE or REPLACE file format Csv_Format
type=CSV

DESC file format Csv_Format;

--The Describe Format Consists some errors we will find each of them and solve it 
--to upload the data navigate to the table u have created and then use three dots then load data SNOWFLAKE_PRACTISE.PUBLIC.EMPLOYEE_CSV 

--Errors that might occur

alter file format Csv_Format
set SKIP_HEADER=1
FIELD_DELIMITER=','
RECORD_DELIMITER='\n'
FIELD_OPTIONALLY_ENCLOSED_BY='"'
ERROR_ON_COLUMN_COUNT_MISMATCH=FALSE;

--These are the Main things that need to be checked before Loading a file

-->JSON FILE


create file format Json_Format
    type=JSON
    STRIP_OUTER_ARRAY = TRUE
    COMPRESSION = 'AUTO'
    NULL_IF = ('null', '')
    IGNORE_UTF8_ERRORS = FALSE;

create table EMPLOYEE_JSON(
data VARIANT
);

select * from EMPLOYEE_JSON;

--Like wise Same Works for XML and Parquet Files with there own File Formats

--Loading Parquet File

CREATE FILE FORMAT Par_Format
type=parquet;

Create table EMPLOYEE_Par(
Employee_Data variant
);
--Upload Parquet file to the table

SELECT* from EMPLOYEE_PAR;





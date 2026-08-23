-->Session.1(LOADING DATASETS)

-->Load Data sets from Local or external

-->Create a Stage

-->Create a File Format

-->Create a Table (parmanent or Transient)

-->Use SnowFlake CLI to PUT the Dataset when using Internal Stage or directly load from Snowsight

-->Start Performing Bussiness Querries

use database snowflake_practise;

-->Create a File Format and Stage 


CREATE OR REPLACE FILE format Data_insgest
type=CSV
RECORD_DELIMITER='\n'
FIELD_DELIMITER=','
SKIP_HEADER=1
DATE_FORMAT='YYYY-MM-DD'
FIELD_OPTIONALLY_ENCLOSED_BY='"'
ERROR_ON_COLUMN_COUNT_MISMATCH=FALSE;

CREATE STAGE stage_csv
file_FORMAT=Data_insgest;

--Describe Stage_Csv and List all the Stages

list @STAGE_csv;
Desc Stage stage_csv;

-->Load into the stage ..using put command in SNOWSQL CLI


-->Create tables and use copy to command to load the records

--Example Querry
COPY INTO orders FROM @stage_csv/orders.csv.gz
purge = TRUE -->Removes right after coyping data to the permenent table

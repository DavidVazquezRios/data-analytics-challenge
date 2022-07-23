#Create a database for the students
CREATE SCHEMA IF NOT EXISTS Cobify;

#
USE Cobify;

#Create a table for mathematics
CREATE TABLE fuel_consumption (
    gas_type CHAR(4),
    distance DOUBLE,
    consume DOUBLE,
    speed DOUBLE,
    temp_inside DOUBLE,
    temp_outside DOUBLE

);



#Import the data for the math students

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleandata.csv' 
INTO TABLE fuel_consumption
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
;




#checking math data
SELECT 
    *
FROM
    fuel_consumption
LIMIT 10;

#checking number of data points
SELECT 
    COUNT(school)
FROM
    fuel_consumption;
    

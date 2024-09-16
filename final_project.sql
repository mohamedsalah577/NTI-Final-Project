-- create database
DROP DATABASE IF EXISTS glass_door_data;
CREATE DATABASE IF NOT EXISTS glass_door_data;
USE glass_door_data;


-- Create Dimension Table 1
CREATE TABLE IF NOT EXISTS Location (
    Loc_ID INT PRIMARY KEY,
    Location VARCHAR(255),
    Estimate_of_programmers VARCHAR(255),
    GDP INT NOT NULL,
    Total_Population INT NOT NULL
    
);

-- Insert Data Into Table 1
IN

-- Create Dimension Table 2
CREATE TABLE IF NOT EXISTS Languages (
    Lang_ID INT PRIMARY KEY,
    Language VARCHAR(255) NOT NULL,
    Learning_Difficulty  VARCHAR(255) NOT NULL,
    Growth_trend VARCHAR(255) NOT NULL
);


-- Rename Table 
RENAME TABLE final_project TO Dataset;

ALTER TABLE Dataset
ADD FOREIGN KEY (Lang_ID) REFERENCES languages(Lang_ID);







ALTER TABLE Dataset ADD loc_id INT;
ALTER TABLE Dataset MODIFY COLUMN Loc_ID INT PRIMARY KEY;





ALTER TABLE Dataset
ADD FOREIGN KEY (Lang_ID) REFERENCES languages(Lang_ID);


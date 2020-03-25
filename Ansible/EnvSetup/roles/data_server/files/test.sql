DROP DATABASE testdb;
CREATE DATABASE testdb;
SHOW CREATE DATABASE testdb;

USE testdb;

-- Create a new table called 'testTable' in schema 'testdb'
-- Drop the table if it already exists
DROP TABLE IF exists testdb.testTable;
-- Create the table in the specified schema
CREATE TABLE testdb.testTable
(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, -- primary key column
    Column1 NVARCHAR(50) NOT NULL,
    Column2 NVARCHAR(50) NOT NULL
    -- specify more columns here
);

-- Insert rows into table 'testdb.testTable'
INSERT INTO testdb.testTable
( -- columns to insert data into
 Column1, Column2
)
VALUES
( -- first row: values for the columns in the list above
 'Column1_Value', 'Column2_Value'
),
( -- second row: values for the columns in the list above
 'Column1_Value1', 'Column2_Value1'
);
-- add more rows here

-- Select rows from a Table or View 'testTable' in schema 'testdb'
SELECT * FROM testdb.testTable;

-- Update rows in table 'testdb.testTable'
UPDATE testdb.testTable
SET
    Column1 = 'Colum1_Valueblabla',
    Column2 = 'Colum2_Valueblabla'
    -- add more columns and values here
WHERE Id='1';	/* add search conditions here */

-- Delete rows from table 'testdb.testTable'
DELETE FROM testdb.testTable
WHERE Id='1';	/* add search conditions here */

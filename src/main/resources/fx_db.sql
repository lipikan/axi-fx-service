-- Check and drops the course_details table if already exists
------------------------------------------------------------- 
DROP TABLE IF EXISTS FX_QUOTES;

-- Recreates the course details table
-------------------------------------------------------------
CREATE TABLE  FX_QUOTES(
	ID varchar(50) PRIMARY KEY ,
	DATE_CREATED VARCHAR(50),
	FX_PAIR VARCHAR(50),
	FX_RATE DECIMAL,
	BUY_AMOUNT DECIMAL,
	SELL_AMOUNT DECIMAL
);
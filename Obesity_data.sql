--Table  Obesity Data Set
CREATE TABLE Obesity_data_set (

    Gender varchar ,
	 Age VARCHAR,
	 Height numeric,
	 Weight numeric,
	 family_history_with_overweight VARCHAR,
	 FAVC VARCHAR,
	 FCVC numeric,
	 NCP numeric,
	 CAEC VARCHAR, 
	 SMOKE VARCHAR , 
	 CH2O numeric,
	 SCC VARCHAR,
	 FAF numeric,
	 TUE numeric,
	 CALC VARCHAR,
	 MTRANS VARCHAR,
	 NObeyesdad VARCHAR 
	--PRIMARY KEY (NObeyesdad)
         );

select * from ObesityDataSet;


--Table  Obesity level
CREATE TABLE Obesity_level (
	ID numeric,
	NObeyesdad VARCHAR,
	Reccommendation VARCHAR
	);
	
select * from Obesity_level;
	






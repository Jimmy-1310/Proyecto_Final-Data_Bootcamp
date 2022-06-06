-- ML model DBs
-- people DB
CREATE TABLE people (
  p_id INT PRIMARY KEY NOT NULL UNIQUE,
  gender TEXT,
  age INT,
  height DECIMAL,
  weight DECIMAL,
  NObeyesdad TEXT
);

-- people's answers DB
CREATE TABLE answers (
  a_id INT PRIMARY KEY NOT NULL UNIQUE,
  p_id INT,
  family_history_with_overweight TEXT,
  FAVC TEXT,  	
  FCVC DECIMAL,
  NCP DECIMAL,
  CAEC TEXT,
  smoke TEXT,
  CH20 DECIMAL,
  SCC TEXT,
  FAF DECIMAL,
  TUE DECIMAL,
  CALC TEXT,
  MTRANS TEXT
);

-- recommendations DB
CREATE TABLE health_recommendations (
  r_id INT PRIMARY KEY NOT NULL UNIQUE,
  BMI INT,
  BMI_description TEXT,
  recommendation TEXT
);

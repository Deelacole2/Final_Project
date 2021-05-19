CREATE TABLE hospital_popup (
  FID int UNIQUE primary key NOT NULL,
  NAME varchar UNIQUE NOT NULL,
  CITY varchar,
  STATE varchar,
  COUNTY varchar,
  STATUS varchar,
  TYPE varchar
);

CREATE TABLE hosp_addr (
  FID int UNIQUE NOT NULL,
  ADDRESS varchar,
  CITY varchar,
  STATE varchar (2),
  ZIP int,
  COUNTY varchar,
  LATITUDE float,
  LONGITUDE float, 
  FOREIGN KEY (FID) REFERENCES hospital_popup(FID) 
);

CREATE TABLE hosp_metric (
  STATE varchar,
  StateAbbr varchar(2) UNIQUE,
  DEATHS integer,
  DEATHS_per_100000 integer,
  DEATH_TO_POP_RATIO float,
  AVG_COST_OF_LIVING float,
  STATE_GEOPOINTS float, 
  PRIMARY KEY (StateAbbr)
);

CREATE TABLE acute_care_loc (
  NAME varchar,
  ADDRESS varchar,
  CITY varchar,
  STATE varchar,
  ZIP integer,
  LATITUDE float,
  LONGITUDE float,
  GEOLOCATION point,
  PRIMARY KEY (NAME), 
  FOREIGN KEY (NAME) REFERENCES hospital_popup(NAME)
);

CREATE TABLE random_loc (
  Random_location point,
  Min_Distance_From_Acute_Hospital float,
  Is_Medical_Desert varchar,
  latitude float,
  longitude float
);


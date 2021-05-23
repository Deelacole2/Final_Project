
# Final_Project

=======
# Yellow Team Final Project
*Team Members:* D'Ana Rogers, Lisa Binegar, Kola Oyedele, and Allison Bartlett

**Topic**
- Medical deserts in the United States and to show the impact of medical deserts in rural areas. 

**Reason**
- As many hospital and care facilities close in the United States, this leaves communities vulnerable without immediate healthcare options. We want to show if a community is located in a medical desert, and if so, how does this correlate with things like mortality rate, heart attack deaths, and infant mortality in those areas. Based on hospital closures, we also want to predict areas that may be in danger of being in a medical desert in the future. 

**Data**
- US Hospital Location CSV from 
- Total Population and SVI from census.gov 
- Mortality and diease rates from CDC.gov
- State Cost of Living Index from AdvisorSmith
- US County Sociohealth data from Kaggle.com

**Questions**
- If the location being searched is in a medical desert? Does being in a medical desert coralate with other health factors, such as mortality rates. 

**Hypothesis** 
- Living in a medical desert will be correlated with poorer overall health outcomes. 

**Technologies, Languages, Tools, and Algorithms**
- Postgres SQL
- AWS RDS
- S3
- Python
- Tableau
- LinearRegression Model

## Postgres Database

##### For the database portion of our project we used AWS RDS and Postgres SQL. PySpark was used load the data into the database. Our database will be used to hold the tables from our Exploratory phases as well as host the data that we will use in our Machine Learning model. Our database will not be connected to our final project, but it will serve as a location to create new datasets for analysis for use in Tableau.
##### We chose this database type for ease of use, all team members were able to connect and query the database effortlessly.

## Machine Learning Model

##### The machine learning model used for this project is the LinearRegression model. This is because we seek to predict a continous data which is the Average Number of Physically Unhealthy Days in a county given certain feature variables. Using a data set with about 3000 records, each representing a county, and 79 of those counties are medical deserts, the data was split into test and train data. 743 records fell into the test category and the model achieved an accuracy of 87%. 

##### A map of the US was also made using Python's Folium library. The maps shows the counties that are medical deserts and a popup at those counties showing the county Name, State, Average Number of Physically Unhealthy Days, and SVI infortmation for the county. 



LINK to GOOGLE DOC: 
https://docs.google.com/document/d/1JQ_D4rWqpEzXDXJcitcBiWboscQrCKmT_lHpX6utAD8/edit


# Final_Project

=======
# Yellow Team Final Project
*Team Members:* D'Ana Rogers, Lisa Binegar, Kola Oyedele, and Allison Bartlett

**Topic**
- Medical deserts, also referred to as hospital deserts, in the United States and the impact the lack of access to care has on various health statistics. 

**Reason**
- We all had an interest in a project topic that fell under the domain of “healthcare.” In our initial discussions, we gravitated towards topics on access to care. A major barrier to equitable and high quality care is if there are simply no providers, hospitals, or options where you live. We discussed the concept of medical deserts and though there is increasing concern about the subject, did not find a robust dashboard illustrating the issues and thought it would be interesting to explore further. 
- As many hospital and care facilities close in the United States, this leaves communities vulnerable without immediate healthcare options. We want to show if a community is located in a medical desert, and if so, how does this correlate with things like mortality rate, heart attack deaths, and infant mortality in those areas. Based on hospital closures, we also want to predict areas that may be in danger of being in a medical desert in the future. 

**Data**
- US Hospital Location CSV from 
- Total Population and SVI from census.gov 
- Mortality and diease rates from CDC.gov
- State Cost of Living Index from AdvisorSmith
- US County Sociohealth data from Kaggle.com

**Questions**
- Our initial question was whether one could easily determine if they lived in a medidal desert. Secondly, does living in a medical desert correlate with a higher or increased number of physically unhealthy days? 

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

##### The machine learning model used for this project is the LinearRegression model. This is because we seek to predict a continous data which is the Average Number of Physically Unhealthy Days in a county given certain feature variables. Using a data set with about 3000 records, each representing a county, and 79 of those counties are medical deserts, the data was split into test and train data. 743 records fell into the test category and the model achieved an accuracy of 87%.   ![LinearRegression_Model_Accuracy](Resources/model_accuracy_score.PNG)

## Explanations

* Medical Desert Determination: The definition of a medical desert is anyplace that is more than 60 miles from an acute care hospital. From the us_hospital_locations datset, I extracted the locations of all acute care hospitals in the US. Then, using the us_county_sociohealth_data, I calculated the distance of each county from all acute care hospitals and determined the least distance. If least distance is greater than 60 miles then the county is a medical desert.  
![Medical_Deserts_Determination_Code](Resources/medical_desert_determination_code.PNG)

* We sought to establish whether or not being a medical desert affects the average number of physically unhealthy days in a County. Did was done by making a box plot and a violin plot with the working dataset. Based on the plot, it was found that average number of physically unhealthy days did not differ significantly between medical desert Counties and non-mediacal-desert Counties.
![Box-Plot_for_Physically_Unhealthy_Days](Resources/box_plot_for_unhealthy_days.PNG) 
![Violin-Plot_for_Physically_Unhealthy_Days](Resources/violin_plot_for_unhealthy_days.PNG)


* The use of folium maps was discontinued in favor of Tableau Public for the Dashboard. Here's the link for the dashboard:
https://public.tableau.com/views/YellowTeamCapstone/Story1?:language=en&:display_count=y&publish=yes&:origin=viz_share_link



LINK to GOOGLE DOC: 
https://docs.google.com/document/d/1JQ_D4rWqpEzXDXJcitcBiWboscQrCKmT_lHpX6utAD8/edit

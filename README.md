
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

## PostgreSQL Database

##### For the database section of our project, we decided to implement an AWS relational database. This method was primarily chosen because of ease of use, each member of our team was able to seamlessly connect to the database and perform queries with ease.

##### We started with a cloud-based notebook, Google Colaboratory. Within Google Colab we created a connection to our AWS hosted Capstone database. All text files, that were needed, were loaded into our S3 bucket storage system and pulled into our Google Colab notebooks as DataFrames for additional analysis and inspection, before being loaded into our database. The method of insertion into the database was PySpark. PySpark was able to make a connection to both the AWS S3 buckets and the AWS hosted PostgreSQL database.

###### Our database was used a host of the data that would be used in the machine learning model as well and multiple datasets that we would use to create visualizations for this project. We were able to connect the db using SqlAlchemy, specifically Psychopg2 and RealDictCursor.

##### There were a couple challenges, initially wanted to import the data directly into pgAdmin but could not find the area where it was having the conflict. I pivoted to google co-lab for our method of insertion. 


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

LINK to the final Google Slides Presentation: 
https://docs.google.com/presentation/d/1CdDLPSW5gvsqWbOWS2cVy2eUCCllHZse3GAuCbQp1ss/edit?usp=sharing 

LINK to the Medical Desert Dashboard, hosted by Tableau: 
https://public.tableau.com/views/YellowTeamCapstone/Presentation?:language=en-US&:display_count=n&:origin=viz_share_link

# Final_Project - Overview 

- Selected topic: 
     Our topic is loosely titled "Medical Deserts in the United States." We are interested in creating a dashboard with all the acute care general hospitals mapped across the U.S., and with color coding to determine regions that are within 60 miles from an acute care general hospital versus those regions that are not. The final dashboard will allow an end-user to enter their geo point and learn whether they are in a medical desert, as well as other health-related data points, including a Social Vulnerability Index measurement, the cost of living, overall mortality rate, and possibly infant maternal/mortality data as well.  
- Reason why they selected their topic: 
     We were all interested in a project that was healthcare related, and one that provided an overall snapshot of a topic related to access to care.  
- Description of their source of data
     We are utilzing publicly available data sources from the CDC, the American Hospital Association, Kaggle, and will likely utilize other data sources that are from reliable and well-resourced agencies. 
- Questions they hope to answer with the data
     We are curious if regions that are determined to be in a medical desert have overall poorer health care trends (higher mortality rates, disease rates, and higher SVI measurements). Are these regions at risk of additional hospital closures, or has a hospital closed in that region in the past five years? These are additional questions we would hope to provide some high-level answers to for a citizen or policy maker. 

# Final_Project- Database Feature

So far have only put togther the hospital data into an erd and created the new datasets.
Tomorrow 4/30 we start up AWS and build the public postgres database and load in blank data sets

      * PySpark
      * AWS
      * Postgres
     
# Technologies Used

## Data Cleaning and Analysis
Postgres will be used to clean the data and perform an exploratory analysis. 

## Database Storage
Postgres is the database we intend to use, and we will integrate Flask or Tableau to display the data.

## Machine Learning
SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is Sklearn.linear_model. 

## Dashboard
We will use either D3.js or Tableau for a fully functioning and interactive dashboard. 

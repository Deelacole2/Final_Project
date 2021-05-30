import pandas as pd

data_to_load = "us_hospital_locations.csv"

hospital_info_df = pd.read_csv(data_to_load)

hospital_info_df.head()

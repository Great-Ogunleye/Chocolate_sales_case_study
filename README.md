Chocolates_sales_case_study
This is a hands on project for a chocolate company called Chocodelight

Project steps as below
Data was downloaded using python script from [here](https://www.kaggle.com/api/v1/datasets/download/ssssws/chocolate-sales-dataset-2023-2024)
Raw data downloaded consist of 5 CSV files
4 out of the 5 raw data files which excludes the calender csv file was then extracted and transformed using python script to create a normalised data (2NF) with no missing values and duplicates.
A connection with postgres server was established using python script
python script was used to create schemas (operations and analytics) and tables for the chocolate_sales database on postgres
python script was also used to load the extracted and transformed data into chocolate_sales database on postgres
sql script was written to create indexes on key colums which ensures refrential integrity and high performance
sql script was also written to create view tables which provide easy access to insights
sql script was also written for customer and sales segmentation to enable fast business reporting.


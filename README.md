# Crowdfunding_ETL

In this project, crowdfunding data was leveraged to model an ETL pipeline. 

In the ETL_Mini_Project_LJ_DA.ipynb file, we first extract data from the crowdfunding.xlsx and contacts.xlsx
files (located in the Resource folder). The data is then cleaned and separated into four dataframes 
(campaign, contacts, category, and subcategory) that are exported as csv files to be loaded into SQL databases.

After running the .ipynb file, the crowdfunding_db_schema.sql file is run in Postgres to create tables that are 
then loaded with the corresponding csv files. 

The Crowdfunding_ERD.png file provides a list of all table columns, types, and keys.


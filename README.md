# Crowdfunding_ETL

This project aims to build an ETL pipeline using Python, Pandas, and Python dictionary methods or regular expressions to extract and transform data. Transformed data was used to create four CSV files, an ERD, and a table schema. Successfully uploaded CSV file data into a Postgres databases.

Tools Used

Python

Pandas

Numpy

Postgres Database

![QuickDBD-export](https://github.com/WanessaEdmond/Crowdfunding_ETL/assets/134868789/9c505ff6-be58-4db4-9a14-9214868fc720)

Extract the crowdfunding.xlsx Data

Read the data into a Pandas DataFrame

crowdfunding_info_df = pd.read_excel('Resources/crowdfunding.xlsx') crowdfunding_info_df.head()

Create the Category and Subcategory DataFrames Create a Category DataFrame that has the following columns:

A "category_id" column that is numbered sequential form 1 to the length of the number of unique categories. A "category" column that has only the categories. Export the DataFrame as a category.csv CSV file.

Create a SubCategory DataFrame that has the following columns:

A "subcategory_id" column that is numbered sequential form 1 to the length of the number of unique subcategories. A "subcategory" column that has only the subcategories. Export the DataFrame as a subcategory.csv CSV file.

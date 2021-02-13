# DMS-Universty-Final-Work


The aim of this  project is to examine the database of Airbnb  members in                                    San Francisco /California.

In this final study, I learned a lot of information about database management. I split a large database according to certain conditions and load each dataset into the MySQL Workbench.

## Repo Contents

0) Installation
1) Database and Database Source Address
2) Er-Diagram and All data .cvs format
3) Stored Procedure
4) Views 
5) Summary of All Done





## 1) Installation

* Install Mysql Workbench and Mysql Server from  [MYSQL](https://www.mysql.com/downloads/) to install this project.

* Afther that install tihs repo .zip format or clone your computer to install this project.

## 2) Database and Database Source Address

 Database found from [kaggle ](https://www.kaggle.com/jeploretizo/san-francisco-airbnb-listings).

Database .csv format in [here ](https://www.kaggle.com/jeploretizo/san-francisco-airbnb-listings).

## 3) Er-Diagram and All data .cvs format
 ![alt text](https://github.com/mfurkan60/DMS-Universty-Final-Work/blob/main/Er%20Diagram/Er%20Diagram.png?raw=true)

## 4) Stored Procedure
  A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

``` 
CREATE PROCEDURE procedure_name
AS
sql_statement
GO;

```

## 5) Views
In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

``` 
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

```

## 6) Summary of All Done

In this project, I divided all the data according to er diagram. I uploaded every data I divided into PHPmyadmin and obtained an sql code from there.I have run all where I have obtained sql codes in Mysql
after that I have add indexes,stored procedure and views in MySql Workbench.
 
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

 

# Databricks-Spark
My Journey with Big Data and Databricks.  

Certificate Awarded by Databricks & Apache Spark [Click Here for Certificate](https://github.com/michaelmaxi/Databricks-Spark/blob/main/Databricks%20Apache%20Spark%20RPSL9QLEDPAV.pdf)

Why use Databricks? It allows you to process large amounts of data from multiple sources and locations.  Unites your Data Analyst team allowing them to utilize the skills they already know.  Databricks is enabled for SQL, R, Python or Scala allowing your team to access using their own skill set and the team to work in a collaborative way.  

In this course we spend alot of time using SQL in Spark.  SparkSQL Notebooks.  
click for --> [Lessons](https://files.training.databricks.com/courses/moocs/SQLDA/Lessons.dbc)

When working with data you need to consider the Data characteristics -> Volume -> Velocity -> Variety -> Veracity

It started with Data Warehouse's including structured data and proprietry systems.  Then came along the Data Lake which allowed for unstructured data and open systems. Now the **Lakehouse** is emerging as a best of both worlds joining the 2.  Looking to the future with a data single source of truth.

**Concepts**
SQL Optimization Plan - Databricks has an SQL Execution plan so you can view and optimize query's.  

**Cache-->** table into memory for faster retrieval on larger datasets.  Example **CACHE TABLE MyTableName;**

**Partitions-->** When using large datasets and tables we can partition a table by one of it's attributes or columns.  By storing data in partitions that are regulary searched on and filtered on these attributes can speed up the process of retrieval.  Example 

**Data File Types-->** Now we all have used the *.csv file but how about *.json and the Databricks Spark "*.parquet" type format?

**CTE** Common Table Expressions are supported in SparkSQL **WITH MyQuery AS** [Click to learn more](https://github.com/michaelmaxi/BigQuerySQL)

**DESCRIBE-->** Table information **DESCRIBE TABLE mytabledata;** & try **DESCRIBE TABLE EXTENDED**

**ARRAY and STRUCT** You can find out more of me using these by clicking my [Google Bigquery](https://github.com/michaelmaxi/BigQuerySQL)

**Data Sample** add **LIMIT 10** or **TABLESAMPLE (10 ROWS)** to the end of SQL Query

**Databricks** Allows for you to use the **CREATE WIDGET DROPDOWN** in a sql command.  You can then use this drop down to gather user input and run a sql command based on input.


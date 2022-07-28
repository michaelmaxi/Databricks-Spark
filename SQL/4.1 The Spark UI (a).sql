-- Databricks notebook source
-- MAGIC 
-- MAGIC %md-sandbox
-- MAGIC 
-- MAGIC <div style="text-align: center; line-height: 0; padding-top: 9px;">
-- MAGIC   <img src="https://databricks.com/wp-content/uploads/2018/03/db-academy-rgb-1200px.png" alt="Databricks Learning" style="width: 600px">
-- MAGIC </div>

-- COMMAND ----------

-- MAGIC %run ../Includes/Classroom-Setup

-- COMMAND ----------

DROP TABLE IF EXISTS People10M;
CREATE TABLE People10M
USING csv
OPTIONS (
path "/mnt/training/dataframes/people-10m.csv",
header "true");

DROP TABLE IF EXISTS ssaNames;
CREATE TABLE ssaNames USING parquet OPTIONS (
  path "/mnt/training/ssn/names.parquet",
  header "true"
);

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Catalog Error

-- COMMAND ----------

SELECT
  firstName,
  lastName,
  birthDate
FROM
  People10M
WHERE
  year(birthDate) > 1990
  AND gender = 'F'

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Plan Optimization Example

-- COMMAND ----------

CREATE OR REPLACE TEMPORARY VIEW joined AS
SELECT People10m.firstName,
  to_date(birthDate) AS date
FROM People10m
  JOIN ssaNames ON People10m.firstName = ssaNames.firstName;

CREATE OR REPLACE TEMPORARY VIEW filtered AS
SELECT firstName,count(firstName)
FROM joined
WHERE
  date >= "1980-01-01"
GROUP BY
  firstName, date;


-- COMMAND ----------

SELECT * FROM  filtered;

-- COMMAND ----------

CACHE TABLE filtered;

-- COMMAND ----------

SELECT * FROM filtered;

-- COMMAND ----------

SELECT * FROM filtered WHERE firstName = "Latisha";

-- COMMAND ----------

UNCACHE TABLE IF EXISTS filtered;

-- COMMAND ----------

SELECT * FROM filtered WHERE firstName = "Latisha";

## In the SQL shell, create the bank database that your application will use:
CREATE DATABASE bank;

## Create a SQL user for your app:
CREATE USER python WITH PASSWORD test;

## Give the user the necessary permissions:
GRANT ALL ON DATABASE bank TO python;

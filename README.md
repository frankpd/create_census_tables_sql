# create_census_tables_sql
SQL Scripts for Creating 2010 Census Tables in SQLite and PostgreSQL

These SQL scripts can be used for generating empty table shells for Summary File 1 from the 2010 US Census in either SQLite or PostgeSQL. The SF1 data files are in a CSV format and can be readily loaded into the empty tables. The geographic header file is in a fixed-width format, and must be read into a temporary staging table before being parsed and inserted into the geo table using the geo_header script.

2010 Census SF1: https://www.census.gov/data/datasets/2010/dec/summary-file-1.html

These scripts were forked, merged, and built on from this original source: https://gist.github.com/spara/1590982

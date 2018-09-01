# SQL for Creating 2010 Census Tables in SQLite and PostgreSQL

These SQL scripts can be used for generating empty table shells for Summary File 1 (sf1) and the Demographic Profile (dp) from the 2010 US Census in either SQLite or PostgeSQL. The SF1 data files are in a CSV format and can be readily loaded into the empty tables. The geographic header file is in a fixed-width format, and must be read into a temporary staging table before being parsed and inserted into the geo table using the geoheader script.

Scripts for creating the data tables will work in either database. The scripts for parsing and populating the geographic header files are database specific. 

2010 Census SF1: https://www.census.gov/data/datasets/2010/dec/summary-file-1.html

2010 Census DP: https://www.census.gov/data/datasets/2010/dec/demographic-profile-with-geos.html

These scripts were forked, merged, and built on from this original source: https://gist.github.com/spara/1590982

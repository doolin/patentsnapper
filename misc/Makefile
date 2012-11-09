# Move existing patent data from sqlite3 into postgres.
# This collection of scripts is admittedly kludgey,
# but each step is necessary, solving a specific issue
# raised by migrating from sqlite3 to postgres.
#
# Cleaning all this up should be done in two parts.
# 1. Use better schemas from the start, which will require
# doing some work in the python code which parses the
# patent source data.
# 2. Combining steps pairwise within a unified script
# written in Ruby or Rake, such that steps can be unit
# tested as necessary.


DB_TARGET = short
DB_SOURCE = /data/patentdata/DVN/invpat_final.sqlite3

refresh: postgres

# We should maintain a target with a "short" database
# for testing scripts.
short: clean
	sqlite3 $(DB_SOURCE) < make_short.sql
	sqlite3 $(DB_TARGET).sqlite3 < invpats.schema
	sqlite3 $(DB_TARGET).sqlite3 < invpats.inserts
	sqlite3 $(DB_TARGET).sqlite3 < alter_invpat.sql
	sqlite3 $(DB_TARGET).sqlite3 < export_pg.sql

postgres: clean
	createdb short -U postgres
	psql -U postgres -d $(DB_TARGET) < invpats_pg.schema
	psql -U postgres -d $(DB_TARGET) < invpats_pg.inserts

clean:
	rm -rf $(DB_TARGET)
	dropdb short -U postgres

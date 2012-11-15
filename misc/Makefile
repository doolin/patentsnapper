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
DB_INVPATS = invpats
DB_SOURCE = /data/patentdata/DVN/invpat_final.sqlite3

refresh: invpats

# Create a local copy of the sqlite3 file because it
# needs to be altered, then rebuild with correct
# schema, and export table to postgres using .mode insert.
invpats: makeinvpats
	sqlite3 $(DB_INVPATS).sqlite3 < invpats.schema
	sqlite3 $(DB_INVPATS).sqlite3 < invpats.inserts
	sqlite3 $(DB_INVPATS).sqlite3 < alter_invpat.sql
	sqlite3 $(DB_INVPATS).sqlite3 < export_pg.sql

makeinvpats:
	sqlite3 $(DB_SOURCE) < make_invpats.sql

# We should maintain a target with a "short" database
# for testing scripts.
short: clean makeshort
	sqlite3 $(DB_TARGET).sqlite3 < invpats.schema
	sqlite3 $(DB_TARGET).sqlite3 < invpats.inserts
	sqlite3 $(DB_TARGET).sqlite3 < alter_invpat.sql
	sqlite3 $(DB_TARGET).sqlite3 < export_pg.sql

makeshort:
	sqlite3 $(DB_SOURCE) < make_short.sql

postgres: clean
	createdb $(DB_TARGET) -U postgres
	psql -U postgres -d $(DB_TARGET) < invpats_pg.schema
	psql -U postgres -d $(DB_TARGET) < invpats_pg.inserts > /dev/null

clean:
	rm -rf $(DB_TARGET).sqlite3
	dropdb $(DB_TARGET) -U postgres
	
clean-invpats:
	$(DB_INVPATS).sqlite3

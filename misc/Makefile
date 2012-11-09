
DB_TARGET = short.sqlite3
DB_SOURCE = /data/patentdata/DVN/invpat_final.sqlite3

refresh: short

# We should maintain a target with a "short" database
# for testing scripts.
short:
	rm -rf short.sqlite3
	sqlite3 $(DB_SOURCE) < make_short.sql
	sqlite3 $(DB_TARGET) < invpats.schema
	sqlite3 $(DB_TARGET) < invpats.inserts
	sqlite3 $(DB_TARGET) < alter_invpat.sql
	sqlite3 $(DB_TARGET) < export_pg.sql

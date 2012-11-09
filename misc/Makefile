
refresh:
	rm -rf short.sqlite3
	sqlite3 /data/patentdata/DVN/invpat_final.sqlite3 < make_short.sql
	sqlite3 short.sqlite3 < invpats.schema
	sqlite3 short.sqlite3 < invpats.inserts
	sqlite3 short.sqlite3 < alter_invpat.sql

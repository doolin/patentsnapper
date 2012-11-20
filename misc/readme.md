# SQLite to Postgres migrations

The patent data emerges from the preprocessor as a collection of SQLite3 databases.
This is convenient for desktop analysis, but inappropriate for serving from a
database server such as Postgres.  The main issues are:

* Schemas in SQLite are not enforced, so mis-typing data in
sqlite will result in an error when migrated to postgres.
* The size of the data isn't overly large (small double digit G total),
but the data is large enough make console operations very tedious. 


## Procedure

1. Ensure clean up-to-date copies of the desired sqlite3 files exist in
a location which is accessible for reading.

2. Run the migration script into a new, temporary db
to add the timestamp columns needed by rails.

3. Dump the new, temporary sqlite db

4. `tail -n +2 tmp.dump` to slice out sqlite's leading PRAGMA.
  
5. Drop the temporary postgres database, create it, psql db < tmp.dump > /dev/null` This
command will take several minutes to run.

6. After loading into postgres, do a `pg_dump` to get a nice, clean postgres dump,
then upload that to the S3 bucket.

7. Do `heroku pgbackups:restore ...`
 


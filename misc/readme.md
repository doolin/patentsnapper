# SQLite to Postgres migrations

The patent data emerges from the preprocessor as a collection of SQLite3 databases.
This is convenient for desktop analysis, but inappropriate for serving from a
database server such as Postgres.  The main issues are:

* Schemas in SQLite are not enforced, so mis-typing data in
sqlite will result in an error when migrated to postgres.
* The size of the data isn't overly large (small double digit G total),
but the data is large enough make console operations very tedious. 


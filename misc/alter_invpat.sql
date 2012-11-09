-- Use these statements to start the migration from the existing
-- `invpat_final.sqlite3` database (found on DVN) to a structure
-- which ultimately allows very easy insertion of new data
-- as patents are released weekly.

alter table invpats add column created_at TIMESTAMP;
alter table invpats add column updated_at TIMESTAMP;
UPDATE invpats SET created_at = DATETIME('now');
UPDATE invpats SET updated_at = DATETIME('now');

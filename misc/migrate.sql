/*
-- CREATE TABLE assignees (...);
-- INSERT INTO assignees SELECT rowid,* FROM patent;
attach database "/data/patentdata/LATEST/assignee.sqlite3" as attached;
create table assignees as select rowid,* from attached.assignee;
alter table assignees add column created_at TIMESTAMP;
alter table assignees add column updated_at TIMESTAMP;
UPDATE assignees SET created_at = DATETIME('now');
UPDATE assignees SET updated_at = DATETIME('now');
detach database attached;
*/

--/* ---
attach database "/data/patentdata/LATEST/citation.sqlite3" as attached;
create table citations as select rowid,* from attached.citation; -- limit 10;
alter table citations add column created_at TIMESTAMP;
alter table citations add column updated_at TIMESTAMP;
UPDATE citations SET created_at = DATETIME('now');
UPDATE citations SET updated_at = DATETIME('now');
detach database attached;
--*/ ---

/*
attach database "/data/patentdata/LATEST/class.sqlite3" as attached;
create table classes as select rowid,* from attached.class; -- limit 10;
alter table classes add column created_at TIMESTAMP;
alter table classes add column updated_at TIMESTAMP;
UPDATE classes SET created_at = DATETIME('now');
UPDATE classes SET updated_at = DATETIME('now');
detach database attached;
*/

/*
attach database "/data/patentdata/LATEST/inventor.sqlite3" as attached;
create table inventors as select rowid,* from attached.inventor; -- limit 1000;
alter table inventors add column created_at TIMESTAMP;
alter table inventors add column updated_at TIMESTAMP;
UPDATE inventors SET created_at = DATETIME('now');
UPDATE inventors SET updated_at = DATETIME('now');
detach database attached;
*/

/* ---
attach database "/data/patentdata/LATEST/invpat_final.sqlite3" as attached;
create table invpats as select rowid,* from attached.invpat;
alter table main.invpats add column created_at TIMESTAMP;
alter table main.invpats add column updated_at TIMESTAMP;
UPDATE invpats SET created_at = DATETIME('now');
UPDATE invpats SET updated_at = DATETIME('now');
detach database attached;
*/ ---

/*
attach database "/data/patentdata/LATEST/lawyer.sqlite3" as attached;
create table lawyers as select rowid,* from attached.lawyer limit 1000;
alter table lawyers add column created_at TIMESTAMP;
alter table lawyers add column updated_at TIMESTAMP;
UPDATE lawyers SET created_at = DATETIME('now');
UPDATE lawyers SET updated_at = DATETIME('now');
detach database attached;
*/

/*
attach database "/data/patentdata/LATEST/patdesc.sqlite3" as attached;
create table pat_descs as select rowid,* from attached.patdesc; -- limit 10;
alter table pat_descs add column created_at TIMESTAMP;
alter table pat_descs add column updated_at TIMESTAMP;
UPDATE pat_descs SET created_at = DATETIME('now');
UPDATE pat_descs SET updated_at = DATETIME('now');
detach database attached;
*/

/* ---
attach database "/data/patentdata/LATEST/patent.sqlite3" as attached;
create table patents as select rowid,* from attached.patent; -- limit 1000;
alter table patents add column created_at TIMESTAMP;
alter table patents add column updated_at TIMESTAMP;
UPDATE patents SET created_at = DATETIME('now');
UPDATE patents SET updated_at = DATETIME('now');
detach database attached;
*/ ---

/*
attach database "/data/patentdata/patents/LATEST/allclaims.sqlite3" as attached;
create table claims as select rowid,* from attached.claims limit 1000;
alter table claims add column created_at TIMESTAMP;
alter table claims add column updated_at TIMESTAMP;
UPDATE claims SET created_at = DATETIME('now');
UPDATE claims SET updated_at = DATETIME('now');
detach database attached;
*/

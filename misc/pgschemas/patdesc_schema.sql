CREATE TABLE IF NOT EXISTS patdesc (
  id         SERIAL,
  patent     VARCHAR(8),
  abstract   VARCHAR(50),
  title      VARCHAR(20),
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- CREATE UNIQUE INDEX IF NOT EXISTS uqPatDesc ON patdesc (Patent);
-- DROP INDEX IF EXISTS idx_patent;

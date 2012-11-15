CREATE TABLE IF NOT EXISTS patent (
  id         SERIAL,
  patent     VARCHAR(8),
  kind       VARCHAR(3),
  claims     INTEGER,
  apptype    INTEGER,
  appnum     VARCHAR(8),
  gdate      INTEGER,
  gyear      INTEGER,
  appdate    INTEGER,
  appyear    INTEGER,
  pattype    VARCHAR(15),
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- CREATE UNIQUE INDEX IF NOT EXISTS uqPat on patent (Patent);
-- DROP INDEX IF EXISTS idx_patent;
-- DROP INDEX IF EXISTS idx_ayr;
-- DROP INDEX IF EXISTS idx_gyr;

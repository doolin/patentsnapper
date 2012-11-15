CREATE TABLE IF NOT EXISTS citation (
  id          SERIAL,
  patent      VARCHAR(8),
  cit_date    INTEGER,
  cit_name    VARCHAR(10),
  cit_kind    VARCHAR(1),
  cit_country VARCHAR(2),
  citation    VARCHAR(8),
  category    VARCHAR(15),
  citseq      INTEGER,
  created_at  TIMESTAMP,
  updated_at  TIMESTAMP
);

-- CREATE UNIQUE INDEX IF NOT EXISTS uqCit ON citation (Patent, CitSeq);
-- DROP INDEX IF EXISTS idx_patc;
-- DROP INDEX IF EXISTS idx_patent;
-- DROP INDEX IF EXISTS idx_cit;

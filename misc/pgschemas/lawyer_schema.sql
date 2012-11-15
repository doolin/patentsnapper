CREATE TABLE IF NOT EXISTS lawyer (
  id         SERIAL,
  patent     VARCHAR(8),
  firstname  VARCHAR(15),
  lastname   VARCHAR(15),
  lawcountry VARCHAR(2),
  orgname    VARCHAR(20),
  lawseq     INTEGER
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

-- CREATE UNIQUE INDEX IF NOT EXISTS uqLawyer ON lawyer (Patent, LawSeq);
-- DROP INDEX IF EXISTS idx_patl;
-- DROP INDEX IF EXISTS idx_patent;

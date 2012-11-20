CREATE TABLE IF NOT EXISTS assignee (
  id          SERIAL,
  patent      VARCHAR(8),
  asgtype     INTEGER,
  assignee    VARCHAR(30),
  city        VARCHAR(10),
  state       VARCHAR(2),
  country     VARCHAR(2),
  nationality VARCHAR(2),
  residence   VARCHAR(2),
  asgseq      INTEGER,
  created_at  TIMESTAMP,
  updated_at  TIMESTAMP
);

-- CREATE UNIQUE INDEX IF NOT EXISTS uqAsg ON assignee (Patent, AsgSeq);

-- DROP INDEX IF EXISTS idx_pata;
-- DROP INDEX IF EXISTS idx_patent;
-- DROP INDEX IF EXISTS idx_asgtyp;
-- DROP INDEX IF EXISTS idx_stt;
-- DROP INDEX IF EXISTS idx_cty;

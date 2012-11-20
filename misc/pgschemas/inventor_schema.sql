CREATE TABLE IF NOT EXISTS inventor (
  id          SERIAL,
  patent      VARCHAR(8),
  firstname   VARCHAR(15),
  lastname    VARCHAR(15),
  street      VARCHAR(15),
  city        VARCHAR(10),
  state       VARCHAR(2),
  country     VARCHAR(12),
  zipcode     VARCHAR(5),
  nationality VARCHAR(2),
  invseq      INTEGER,
  created_at  TIMESTAMP,
  updated_at  TIMESTAMP
);

-- CREATE UNIQUE INDEX IF NOT EXISTS uqInv ON inventor (Patent, InvSeq);
-- DROP INDEX IF EXISTS idx_pati;
-- DROP INDEX IF EXISTS idx_patent;
-- DROP INDEX IF EXISTS idx_stt;
-- DROP INDEX IF EXISTS idx_cty;

CREATE TABLE class (
  id         SERIAL,
  patent     VARCHAR(8),
  prim       INTEGER,
  class      VARCHAR(3),
  subclass   VARCHAR(3)
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

-- CREATE INDEX idx_cls  ON class (Class);
-- CREATE INDEX idx_cscl ON class (Class,SubClass);
-- CREATE INDEX idx_patent ON class (Patent);
-- CREATE INDEX idx_prim ON class (Prim);
-- CREATE INDEX idx_scls ON class (SubClass);
-- CREATE UNIQUE INDEX uqClass ON class (Patent, Class, SubClass);

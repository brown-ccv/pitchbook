-- Auto-generated from data dictionary for table: InvestorTypeRelation
-- Columns: 5

DROP TABLE IF EXISTS main.InvestorTypeRelation CASCADE;

CREATE TABLE main.InvestorTypeRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "InvestorType" text,  -- Investor type
    "IsPrimary" text,  -- Investor type is primary or not
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorTypeRelation."InvestorID" IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.InvestorTypeRelation."InvestorType" IS 'Investor type';
COMMENT ON COLUMN main.InvestorTypeRelation."IsPrimary" IS 'Investor type is primary or not';
COMMENT ON COLUMN main.InvestorTypeRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorTypeRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investortyperelation_investorid ON main.InvestorTypeRelation ("InvestorID");
CREATE INDEX idx_investortyperelation_rowid ON main.InvestorTypeRelation ("RowID");

\COPY main.InvestorTypeRelation FROM 'data/InvestorTypeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

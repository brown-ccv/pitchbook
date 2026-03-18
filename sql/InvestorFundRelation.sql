-- Auto-generated from data dictionary for table: InvestorFundRelation
-- Columns: 5

DROP TABLE IF EXISTS main.InvestorFundRelation CASCADE;

CREATE TABLE main.InvestorFundRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "FundID" text,  -- Unique identifier for fund (PbID) the investor manages
    "FundName" text,  -- Name of the fund the investor manages
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorFundRelation."InvestorID" IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.InvestorFundRelation."FundID" IS 'Unique identifier for fund (PbID) the investor manages';
COMMENT ON COLUMN main.InvestorFundRelation."FundName" IS 'Name of the fund the investor manages';
COMMENT ON COLUMN main.InvestorFundRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorFundRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investorfundrelation_investorid ON main.InvestorFundRelation ("InvestorID");
CREATE INDEX idx_investorfundrelation_rowid ON main.InvestorFundRelation ("RowID");

\COPY main.InvestorFundRelation FROM 'data/InvestorFundRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

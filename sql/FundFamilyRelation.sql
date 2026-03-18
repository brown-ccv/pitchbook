-- Auto-generated from data dictionary for table: FundFamilyRelation
-- Columns: 5

DROP TABLE IF EXISTS main.FundFamilyRelation CASCADE;

CREATE TABLE main.FundFamilyRelation (
    "FundID" text,  -- Unique identifier for the fund (PbID). Relates to unique FundID in Fund.csv
    "FundFamilyID" text,  -- ID of the fund in the fund''s fund family
    "FundFamilyName" text,  -- Name of the fund in the fund''s fund family
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.FundFamilyRelation."FundID" IS 'Unique identifier for the fund (PbID). Relates to unique FundID in Fund.csv';
COMMENT ON COLUMN main.FundFamilyRelation."FundFamilyID" IS 'ID of the fund in the fund''s fund family';
COMMENT ON COLUMN main.FundFamilyRelation."FundFamilyName" IS 'Name of the fund in the fund''s fund family';
COMMENT ON COLUMN main.FundFamilyRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.FundFamilyRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_fundfamilyrelation_fundid ON main.FundFamilyRelation ("FundID");
CREATE INDEX idx_fundfamilyrelation_rowid ON main.FundFamilyRelation ("RowID");

\COPY main.FundFamilyRelation FROM 'data/FundFamilyRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

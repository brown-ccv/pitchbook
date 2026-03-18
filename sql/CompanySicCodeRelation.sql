-- Auto-generated from data dictionary for table: CompanySicCodeRelation
-- Columns: 5

DROP TABLE IF EXISTS main.CompanySicCodeRelation CASCADE;

CREATE TABLE main.CompanySicCodeRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "SicCode" text,  -- Standard Industrial Classification is a standard series of four-digit codes crea
    "SicDescription" text,  -- Text description of four digit code (e.g. Services-computer programming service)
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanySicCodeRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanySicCodeRelation."SicCode" IS 'Standard Industrial Classification is a standard series of four-digit codes crea';
COMMENT ON COLUMN main.CompanySicCodeRelation."SicDescription" IS 'Text description of four digit code (e.g. Services-computer programming service)';
COMMENT ON COLUMN main.CompanySicCodeRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanySicCodeRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companysiccoderelation_companyid ON main.CompanySicCodeRelation ("CompanyID");
CREATE INDEX idx_companysiccoderelation_rowid ON main.CompanySicCodeRelation ("RowID");

\COPY main.CompanySicCodeRelation FROM 'data/CompanySicCodeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

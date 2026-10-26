-- Auto-generated from data dictionary for table: CompanyMorningstarCodeRelation
-- Columns: 5

DROP TABLE IF EXISTS main.CompanyMorningstarCodeRelation CASCADE;

CREATE TABLE main.CompanyMorningstarCodeRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "MorningstarCode" text,  -- Morningstar numeric industry classifier (e.g. 31165133)
    "MorningstarDescription" text,  -- Text description of numerical classifier (e.g. Software - Application)
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyMorningstarCodeRelation FROM 'data/CompanyMorningstarCodeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companymorningstarcoderelation_companyid ON main.CompanyMorningstarCodeRelation ("CompanyID");
CREATE INDEX idx_companymorningstarcoderelation_rowid ON main.CompanyMorningstarCodeRelation ("RowID");

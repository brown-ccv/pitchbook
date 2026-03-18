-- Auto-generated from data dictionary for table: CompanyCikCodeRelation
-- Columns: 4

DROP TABLE IF EXISTS main.CompanyCikCodeRelation CASCADE;

CREATE TABLE main.CompanyCikCodeRelation (
    CompanyID text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    CikCode text,  -- Central Index Key (CIK) numbers are given to a company by the US Securities and 
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyCikCodeRelation.CompanyID IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyCikCodeRelation.CikCode IS 'Central Index Key (CIK) numbers are given to a company by the US Securities and ';
COMMENT ON COLUMN main.CompanyCikCodeRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyCikCodeRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companycikcoderelation_companyid ON main.CompanyCikCodeRelation (CompanyID);
CREATE INDEX idx_companycikcoderelation_rowid ON main.CompanyCikCodeRelation (RowID);

\COPY main.CompanyCikCodeRelation FROM 'data/CompanyCikCodeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

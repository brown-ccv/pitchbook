-- Auto-generated from data dictionary for table: CompanyIndustryRelation
-- Columns: 7

DROP TABLE IF EXISTS main.CompanyIndustryRelation CASCADE;

CREATE TABLE main.CompanyIndustryRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "IndustrySector" text,  -- A broad industry category that contains industry groups and codes
    "IndustryGroup" text,  -- An industry sub-category that provides a more specific classification
    "IndustryCode" text,  -- The primary industry the company operates in
    "IsPrimary" text,  -- ''Yes'' if industry is the company''s primary industry or ''No'' if not
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyIndustryRelation FROM 'data/CompanyIndustryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyindustryrelation_companyid ON main.CompanyIndustryRelation ("CompanyID");
CREATE INDEX idx_companyindustryrelation_rowid ON main.CompanyIndustryRelation ("RowID");

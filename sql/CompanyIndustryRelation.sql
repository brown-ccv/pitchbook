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

COMMENT ON COLUMN main.CompanyIndustryRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyIndustryRelation."IndustrySector" IS 'A broad industry category that contains industry groups and codes';
COMMENT ON COLUMN main.CompanyIndustryRelation."IndustryGroup" IS 'An industry sub-category that provides a more specific classification';
COMMENT ON COLUMN main.CompanyIndustryRelation."IndustryCode" IS 'The primary industry the company operates in';
COMMENT ON COLUMN main.CompanyIndustryRelation."IsPrimary" IS '''Yes'' if industry is the company''s primary industry or ''No'' if not';
COMMENT ON COLUMN main.CompanyIndustryRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyIndustryRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyindustryrelation_companyid ON main.CompanyIndustryRelation ("CompanyID");
CREATE INDEX idx_companyindustryrelation_rowid ON main.CompanyIndustryRelation ("RowID");

\COPY main.CompanyIndustryRelation FROM 'data/CompanyIndustryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

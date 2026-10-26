-- Auto-generated from data dictionary for table: CompanyNaicsCodeRelation
-- Columns: 7

DROP TABLE IF EXISTS main.CompanyNaicsCodeRelation CASCADE;

CREATE TABLE main.CompanyNaicsCodeRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "NaicsSectorCode" text,  -- The first category in the North American Industry Classification System (NAICS) 
    "NaicsSectorDescription" text,  -- The first category in the North American Industry Classification System (NAICS) 
    "NaicsIndustryCode" text,  -- The last category in the North American Industry Classification System (NAICS) h
    "NaicsIndustryDescription" text,  -- The last category in the North American Industry Classification System (NAICS) h
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyNaicsCodeRelation FROM 'data/CompanyNaicsCodeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companynaicscoderelation_companyid ON main.CompanyNaicsCodeRelation ("CompanyID");
CREATE INDEX idx_companynaicscoderelation_rowid ON main.CompanyNaicsCodeRelation ("RowID");

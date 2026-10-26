-- Auto-generated from data dictionary for table: CompanyEntityTypeRelation
-- Columns: 5

DROP TABLE IF EXISTS main.CompanyEntityTypeRelation CASCADE;

CREATE TABLE main.CompanyEntityTypeRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "EntityType" text,  -- Entity type of company
    "IsPrimary" text,  -- Company type is primary or not
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyEntityTypeRelation FROM 'data/CompanyEntityTypeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyentitytyperelation_companyid ON main.CompanyEntityTypeRelation ("CompanyID");
CREATE INDEX idx_companyentitytyperelation_rowid ON main.CompanyEntityTypeRelation ("RowID");

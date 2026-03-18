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

COMMENT ON COLUMN main.CompanyEntityTypeRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyEntityTypeRelation."EntityType" IS 'Entity type of company';
COMMENT ON COLUMN main.CompanyEntityTypeRelation."IsPrimary" IS 'Company type is primary or not';
COMMENT ON COLUMN main.CompanyEntityTypeRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyEntityTypeRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyentitytyperelation_companyid ON main.CompanyEntityTypeRelation ("CompanyID");
CREATE INDEX idx_companyentitytyperelation_rowid ON main.CompanyEntityTypeRelation ("RowID");

\COPY main.CompanyEntityTypeRelation FROM 'data/CompanyEntityTypeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

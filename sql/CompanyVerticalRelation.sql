-- Auto-generated from data dictionary for table: CompanyVerticalRelation
-- Columns: 4

DROP TABLE IF EXISTS main.CompanyVerticalRelation CASCADE;

CREATE TABLE main.CompanyVerticalRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "Vertical" text,  -- Classifiers that may span across multiple industries (e.g. Cleantech)
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyVerticalRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyVerticalRelation."Vertical" IS 'Classifiers that may span across multiple industries (e.g. Cleantech)';
COMMENT ON COLUMN main.CompanyVerticalRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyVerticalRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyverticalrelation_companyid ON main.CompanyVerticalRelation ("CompanyID");
CREATE INDEX idx_companyverticalrelation_rowid ON main.CompanyVerticalRelation ("RowID");

\COPY main.CompanyVerticalRelation FROM 'data/CompanyVerticalRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

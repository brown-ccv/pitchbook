-- Auto-generated from data dictionary for table: CompanyCompetitorRelation
-- Columns: 11

DROP TABLE IF EXISTS main.CompanyCompetitorRelation CASCADE;

CREATE TABLE main.CompanyCompetitorRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "CompetitorID" text,  -- Unique identifier for the competitor (PbID)
    "CompetitorName" text,  -- Unique name of the competitor
    "CompetitorDescription" text,  -- Text description of the company''s business
    "CompetitorPrimaryIndustrySector" text,  -- Broad industry category that contains industry groups and codes
    "CompetitorPrimaryIndustryGroup" text,  -- Industry sub-category that provides a more specific classification
    "CompetitorPrimaryIndustryCode" text,  -- Primary industry the company operates in
    "CompetitorAllIndustries" text,  -- Comma-separated list of all industries the company operates in
    "CompetitorVerticals" text,  -- Comma-separated list of all verticals, or classifiers that may span across multi
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyCompetitorRelation FROM 'data/CompanyCompetitorRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companycompetitorrelation_companyid ON main.CompanyCompetitorRelation ("CompanyID");
CREATE INDEX idx_companycompetitorrelation_rowid ON main.CompanyCompetitorRelation ("RowID");

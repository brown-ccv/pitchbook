-- Auto-generated from data dictionary for table: CompanyInvestorRelation
-- Columns: 12

DROP TABLE IF EXISTS main.CompanyInvestorRelation CASCADE;

CREATE TABLE main.CompanyInvestorRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "CompanyName" text,  -- Name of the company
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Generally relates to unique InvestorI
    "InvestorName" text,  -- The formal name of the investor used on the investor''s PitchBook profile page
    "InvestorStatus" text,  -- The current status of the investor in the company. Status values include: ''Acti
    "InvestorType" text,  -- The primary type of investments the investor makes
    "Holding" text,  -- The investor''s stake in the company. Values include either ''Majority'' or ''Mi
    "InvestorSince" date,  -- The date of the earliest investment that the investor made into the target compa
    "InvestorExit" date,  -- The date of the investor exit from the target company
    "InvestorWebsite" text,  -- The investor''s website
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyInvestorRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyInvestorRelation."CompanyName" IS 'Name of the company';
COMMENT ON COLUMN main.CompanyInvestorRelation."InvestorID" IS 'Unique identifier for the investor (PbID). Generally relates to unique InvestorI';
COMMENT ON COLUMN main.CompanyInvestorRelation."InvestorName" IS 'The formal name of the investor used on the investor''s PitchBook profile page';
COMMENT ON COLUMN main.CompanyInvestorRelation."InvestorStatus" IS 'The current status of the investor in the company. Status values include: ''Acti';
COMMENT ON COLUMN main.CompanyInvestorRelation."InvestorType" IS 'The primary type of investments the investor makes';
COMMENT ON COLUMN main.CompanyInvestorRelation."Holding" IS 'The investor''s stake in the company. Values include either ''Majority'' or ''Mi';
COMMENT ON COLUMN main.CompanyInvestorRelation."InvestorSince" IS 'The date of the earliest investment that the investor made into the target compa';
COMMENT ON COLUMN main.CompanyInvestorRelation."InvestorExit" IS 'The date of the investor exit from the target company';
COMMENT ON COLUMN main.CompanyInvestorRelation."InvestorWebsite" IS 'The investor''s website';
COMMENT ON COLUMN main.CompanyInvestorRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyInvestorRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyinvestorrelation_companyid ON main.CompanyInvestorRelation ("CompanyID");
CREATE INDEX idx_companyinvestorrelation_rowid ON main.CompanyInvestorRelation ("RowID");

\COPY main.CompanyInvestorRelation FROM 'data/CompanyInvestorRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

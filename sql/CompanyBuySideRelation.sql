-- Auto-generated from data dictionary for table: CompanyBuySideRelation
-- Columns: 13

DROP TABLE IF EXISTS main.CompanyBuySideRelation CASCADE;

CREATE TABLE main.CompanyBuySideRelation (
    "CompanyID" text,  -- Unique identifier for the company (PBId). Relates to unique CompanyID in Company
    "TargetCompanyID" text,  -- Unique identifier for the company (PbID) that is being acquired
    "TargetCompanyName" text,  -- Name of the company that is being acquired
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "DealDate" date,  -- Date of the investment
    "DealType" text,  -- Type of the investment
    "DealSize" float8,  -- Size of the investment. Displayed in millions
    "CompanyStage" text,  -- Stage the target company is in
    "Industry" text,  -- Industry code of the target company
    "LeadPartnerID" text,  -- PitchBook ID (PbID) of the lead partner
    "LeadPartner" text,  -- Full name of lead partner on the deal
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyBuySideRelation."CompanyID" IS 'Unique identifier for the company (PBId). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyBuySideRelation."TargetCompanyID" IS 'Unique identifier for the company (PbID) that is being acquired';
COMMENT ON COLUMN main.CompanyBuySideRelation."TargetCompanyName" IS 'Name of the company that is being acquired';
COMMENT ON COLUMN main.CompanyBuySideRelation."DealID" IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.CompanyBuySideRelation."DealDate" IS 'Date of the investment';
COMMENT ON COLUMN main.CompanyBuySideRelation."DealType" IS 'Type of the investment';
COMMENT ON COLUMN main.CompanyBuySideRelation."DealSize" IS 'Size of the investment. Displayed in millions';
COMMENT ON COLUMN main.CompanyBuySideRelation."CompanyStage" IS 'Stage the target company is in';
COMMENT ON COLUMN main.CompanyBuySideRelation."Industry" IS 'Industry code of the target company';
COMMENT ON COLUMN main.CompanyBuySideRelation."LeadPartnerID" IS 'PitchBook ID (PbID) of the lead partner';
COMMENT ON COLUMN main.CompanyBuySideRelation."LeadPartner" IS 'Full name of lead partner on the deal';
COMMENT ON COLUMN main.CompanyBuySideRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyBuySideRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companybuysiderelation_companyid ON main.CompanyBuySideRelation ("CompanyID");
CREATE INDEX idx_companybuysiderelation_rowid ON main.CompanyBuySideRelation ("RowID");

\COPY main.CompanyBuySideRelation FROM 'data/CompanyBuySideRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

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

\COPY main.CompanyBuySideRelation FROM 'data/CompanyBuySideRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companybuysiderelation_companyid ON main.CompanyBuySideRelation ("CompanyID");
CREATE INDEX idx_companybuysiderelation_rowid ON main.CompanyBuySideRelation ("RowID");

-- Auto-generated from data dictionary for table: CompanyAffiliateRelation
-- Columns: 13

DROP TABLE IF EXISTS main.CompanyAffiliateRelation CASCADE;

CREATE TABLE main.CompanyAffiliateRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "AffiliateID" text,  -- Unique identifier for the affiliate (PbID)
    "AffiliateName" text,  -- The name of the affiliate
    "AffiliateLegalName" text,  -- Legal name of the affiliate
    "Industry" text,  -- The industry code of the affiliate
    "Location" text,  -- The city, state of the affiliate
    "YearFounded" integer,  -- The year the affiliate was founded
    "AffiliateType" text,  -- The relationship of the affiliate to the company. Affiliate types are limited to
    "HQCity" text,  -- City where the affiliate is headquartered
    "HQState_Province" text,  -- State or province where the affiliate is headquartered
    "HQCountry" text,  -- Country where the affiliate is headquartered
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyAffiliateRelation FROM 'data/CompanyAffiliateRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyaffiliaterelation_companyid ON main.CompanyAffiliateRelation ("CompanyID");
CREATE INDEX idx_companyaffiliaterelation_rowid ON main.CompanyAffiliateRelation ("RowID");

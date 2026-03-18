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

COMMENT ON COLUMN main.CompanyAffiliateRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyAffiliateRelation."AffiliateID" IS 'Unique identifier for the affiliate (PbID)';
COMMENT ON COLUMN main.CompanyAffiliateRelation."AffiliateName" IS 'The name of the affiliate';
COMMENT ON COLUMN main.CompanyAffiliateRelation."AffiliateLegalName" IS 'Legal name of the affiliate';
COMMENT ON COLUMN main.CompanyAffiliateRelation."Industry" IS 'The industry code of the affiliate';
COMMENT ON COLUMN main.CompanyAffiliateRelation."Location" IS 'The city, state of the affiliate';
COMMENT ON COLUMN main.CompanyAffiliateRelation."YearFounded" IS 'The year the affiliate was founded';
COMMENT ON COLUMN main.CompanyAffiliateRelation."AffiliateType" IS 'The relationship of the affiliate to the company. Affiliate types are limited to';
COMMENT ON COLUMN main.CompanyAffiliateRelation."HQCity" IS 'City where the affiliate is headquartered';
COMMENT ON COLUMN main.CompanyAffiliateRelation."HQState_Province" IS 'State or province where the affiliate is headquartered';
COMMENT ON COLUMN main.CompanyAffiliateRelation."HQCountry" IS 'Country where the affiliate is headquartered';
COMMENT ON COLUMN main.CompanyAffiliateRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyAffiliateRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyaffiliaterelation_companyid ON main.CompanyAffiliateRelation ("CompanyID");
CREATE INDEX idx_companyaffiliaterelation_rowid ON main.CompanyAffiliateRelation ("RowID");

\COPY main.CompanyAffiliateRelation FROM 'data/CompanyAffiliateRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

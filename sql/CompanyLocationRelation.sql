-- Auto-generated from data dictionary for table: CompanyLocationRelation
-- Columns: 14

DROP TABLE IF EXISTS main.CompanyLocationRelation CASCADE;

CREATE TABLE main.CompanyLocationRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "LocationName" text,  -- Name of the location
    "LocationType" text,  -- The type of office. Values include Primary HQ, Regional HQ, and Regional Office
    "LocationStatus" text,  -- If the location is active. Statuses include current and former
    "Address1" text,  -- Street address of location
    "Address2" text,  -- Additional address information such as suite number
    "City" text,  -- Location''s city (e.g. San Francisco)
    "State" text,  -- Location''s full state (e.g. California)
    "PostCode" text,  -- Location''s zip code. The location''s 5 digit zip code is used for U.S. location
    "Country" text,  -- Location''s country
    "OfficePhone" text,  -- Location''s office phone number
    "OfficeFax" text,  -- Location''s office fax number
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyLocationRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyLocationRelation."LocationName" IS 'Name of the location';
COMMENT ON COLUMN main.CompanyLocationRelation."LocationType" IS 'The type of office. Values include Primary HQ, Regional HQ, and Regional Office';
COMMENT ON COLUMN main.CompanyLocationRelation."LocationStatus" IS 'If the location is active. Statuses include current and former';
COMMENT ON COLUMN main.CompanyLocationRelation."Address1" IS 'Street address of location';
COMMENT ON COLUMN main.CompanyLocationRelation."Address2" IS 'Additional address information such as suite number';
COMMENT ON COLUMN main.CompanyLocationRelation."City" IS 'Location''s city (e.g. San Francisco)';
COMMENT ON COLUMN main.CompanyLocationRelation."State" IS 'Location''s full state (e.g. California)';
COMMENT ON COLUMN main.CompanyLocationRelation."PostCode" IS 'Location''s zip code. The location''s 5 digit zip code is used for U.S. location';
COMMENT ON COLUMN main.CompanyLocationRelation."Country" IS 'Location''s country';
COMMENT ON COLUMN main.CompanyLocationRelation."OfficePhone" IS 'Location''s office phone number';
COMMENT ON COLUMN main.CompanyLocationRelation."OfficeFax" IS 'Location''s office fax number';
COMMENT ON COLUMN main.CompanyLocationRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyLocationRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companylocationrelation_companyid ON main.CompanyLocationRelation ("CompanyID");
CREATE INDEX idx_companylocationrelation_rowid ON main.CompanyLocationRelation ("RowID");

\COPY main.CompanyLocationRelation FROM 'data/CompanyLocationRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

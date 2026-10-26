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

\COPY main.CompanyLocationRelation FROM 'data/CompanyLocationRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companylocationrelation_companyid ON main.CompanyLocationRelation ("CompanyID");
CREATE INDEX idx_companylocationrelation_rowid ON main.CompanyLocationRelation ("RowID");

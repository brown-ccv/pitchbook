-- Auto-generated from data dictionary for table: InvestorLocationRelation
-- Columns: 14

DROP TABLE IF EXISTS main.InvestorLocationRelation CASCADE;

CREATE TABLE main.InvestorLocationRelation (
    InvestorID text,  -- Unique identifier for the investor (PbID). Relates to unique ID in the Investor.
    LocationName text,  -- Name of the location
    LocationType text,  -- The type of office. Values include Primary HQ, Regional HQ, and Regional Office
    LocationStatus text,  -- If the location is active. Statuses include current and former
    Address1 text,  -- Street address of location
    Address2 text,  -- Additional address information such as suite number
    City text,  -- Location''s city (e.g. San Francisco)
    State text,  -- Location''s full state (e.g. California)
    PostCode text,  -- Location''s zip code. The location''s 5 digit zip code is used for U.S. location
    Country text,  -- Location''s country
    OfficePhone text,  -- Location''s office phone number
    OfficeFax text,  -- Location''s office fax number
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorLocationRelation.InvestorID IS 'Unique identifier for the investor (PbID). Relates to unique ID in the Investor.';
COMMENT ON COLUMN main.InvestorLocationRelation.LocationName IS 'Name of the location';
COMMENT ON COLUMN main.InvestorLocationRelation.LocationType IS 'The type of office. Values include Primary HQ, Regional HQ, and Regional Office';
COMMENT ON COLUMN main.InvestorLocationRelation.LocationStatus IS 'If the location is active. Statuses include current and former';
COMMENT ON COLUMN main.InvestorLocationRelation.Address1 IS 'Street address of location';
COMMENT ON COLUMN main.InvestorLocationRelation.Address2 IS 'Additional address information such as suite number';
COMMENT ON COLUMN main.InvestorLocationRelation.City IS 'Location''s city (e.g. San Francisco)';
COMMENT ON COLUMN main.InvestorLocationRelation.State IS 'Location''s full state (e.g. California)';
COMMENT ON COLUMN main.InvestorLocationRelation.PostCode IS 'Location''s zip code. The location''s 5 digit zip code is used for U.S. location';
COMMENT ON COLUMN main.InvestorLocationRelation.Country IS 'Location''s country';
COMMENT ON COLUMN main.InvestorLocationRelation.OfficePhone IS 'Location''s office phone number';
COMMENT ON COLUMN main.InvestorLocationRelation.OfficeFax IS 'Location''s office fax number';
COMMENT ON COLUMN main.InvestorLocationRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorLocationRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investorlocationrelation_investorid ON main.InvestorLocationRelation (InvestorID);
CREATE INDEX idx_investorlocationrelation_rowid ON main.InvestorLocationRelation (RowID);

\COPY main.InvestorLocationRelation FROM 'data/InvestorLocationRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

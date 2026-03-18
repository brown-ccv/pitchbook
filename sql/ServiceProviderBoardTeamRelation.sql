-- Auto-generated from data dictionary for table: ServiceProviderBoardTeamRelation
-- Columns: 15

DROP TABLE IF EXISTS main.ServiceProviderBoardTeamRelation CASCADE;

CREATE TABLE main.ServiceProviderBoardTeamRelation (
    "ServiceProviderID" text,  -- Unique identifier for the service provider (PbID). Relates to unique ServiceProv
    "PersonID" text,  -- Unique identifier for the team member (PbID)
    "PersonName" text,  -- Team member''s full name
    "FullTitle" text,  -- Team member''s full title
    "IsOnBoard" text,  -- Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person 
    "RepresentingID" text,  -- Unique identifier (PbID) for the representing entity of the board member (e.g. 4
    "RepresentingName" text,  -- The full name for the representing entity of the board member (e.g. Andreeseen H
    "RoleOnBoard" text,  -- The board members role if applicable. Blank or null for non-board members
    "DealCount" integer,  -- Count of the number of deals the person is affiliated with
    "IsCurrent" text,  -- ''Yes'' if the team member is currently employed at the investor; ''No'' if the 
    "Location" text,  -- City, State of the board member''s primary company''s headquarters. Generally ci
    "StartDate" date,  -- Date the team member started their position
    "EndDate" date,  -- Date the team member left their position if applicable
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."ServiceProviderID" IS 'Unique identifier for the service provider (PbID). Relates to unique ServiceProv';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."PersonID" IS 'Unique identifier for the team member (PbID)';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."PersonName" IS 'Team member''s full name';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."FullTitle" IS 'Team member''s full title';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."IsOnBoard" IS 'Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person ';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."RepresentingID" IS 'Unique identifier (PbID) for the representing entity of the board member (e.g. 4';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."RepresentingName" IS 'The full name for the representing entity of the board member (e.g. Andreeseen H';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."RoleOnBoard" IS 'The board members role if applicable. Blank or null for non-board members';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."DealCount" IS 'Count of the number of deals the person is affiliated with';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."IsCurrent" IS '''Yes'' if the team member is currently employed at the investor; ''No'' if the ';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."Location" IS 'City, State of the board member''s primary company''s headquarters. Generally ci';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."StartDate" IS 'Date the team member started their position';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."EndDate" IS 'Date the team member left their position if applicable';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.ServiceProviderBoardTeamRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_serviceproviderboardteamrelation_serviceproviderid ON main.ServiceProviderBoardTeamRelation ("ServiceProviderID");
CREATE INDEX idx_serviceproviderboardteamrelation_rowid ON main.ServiceProviderBoardTeamRelation ("RowID");

\COPY main.ServiceProviderBoardTeamRelation FROM 'data/ServiceProviderBoardTeamRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

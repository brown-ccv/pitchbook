-- Auto-generated from data dictionary for table: CompanyBoardTeamRelation
-- Columns: 14

DROP TABLE IF EXISTS main.CompanyBoardTeamRelation CASCADE;

CREATE TABLE main.CompanyBoardTeamRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "PersonID" text,  -- Unique identifier for person (PbID)
    "PersonName" text,  -- The person''s full name
    "FullTitle" text,  -- The full title of the person (e.g. Chief Executive Officer & Chairman)
    "IsOnBoard" text,  -- Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person 
    "RepresentingID" text,  -- Unique identifier (PbID) for the representing entity of the board member (e.g. 4
    "RepresentingName" text,  -- The full name for the representing entity of the board member (e.g. Andreeseen H
    "RoleOnBoard" text,  -- The board members role if applicable. Blank or null for non-board members
    "IsCurrent" text,  -- Tagged ''Yes'' if the person is a current employee or ''No'' if the person is a 
    "Location" text,  -- City, State of the board member''s or executive''s office location. Generally ci
    "StartDate" date,  -- Date the person started their position
    "EndDate" date,  -- Date the person left their position if applicable
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyBoardTeamRelation FROM 'data/CompanyBoardTeamRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyboardteamrelation_companyid ON main.CompanyBoardTeamRelation ("CompanyID");
CREATE INDEX idx_companyboardteamrelation_rowid ON main.CompanyBoardTeamRelation ("RowID");

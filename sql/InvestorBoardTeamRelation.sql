-- Auto-generated from data dictionary for table: InvestorBoardTeamRelation
-- Columns: 14

DROP TABLE IF EXISTS main.InvestorBoardTeamRelation CASCADE;

CREATE TABLE main.InvestorBoardTeamRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "PersonID" text,  -- Unique identifier for the team or board member (PbID)
    "PersonName" text,  -- Team or board member''s full name
    "FullTitle" text,  -- Team or board member''s full title
    "IsOnBoard" text,  -- Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person 
    "RepresentingID" text,  -- Unique identifier (PbID) of the representing entity of the board member. Left bl
    "RepresentingName" text,  -- Name of the representing entity of the board member. Left blank for non-board me
    "RoleOnBoard" text,  -- Role of the board member
    "IsCurrent" text,  -- ''Yes'' if the team or board member currently holds a board seat at the investor
    "Location" text,  -- City, State of the team or board member''s primary company''s headquarters. Gene
    "StartDate" date,  -- Date the team or board member started their position
    "EndDate" date,  -- Date the team or board member left their position if applicable
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorBoardTeamRelation."InvestorID" IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."PersonID" IS 'Unique identifier for the team or board member (PbID)';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."PersonName" IS 'Team or board member''s full name';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."FullTitle" IS 'Team or board member''s full title';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."IsOnBoard" IS 'Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person ';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."RepresentingID" IS 'Unique identifier (PbID) of the representing entity of the board member. Left bl';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."RepresentingName" IS 'Name of the representing entity of the board member. Left blank for non-board me';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."RoleOnBoard" IS 'Role of the board member';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."IsCurrent" IS '''Yes'' if the team or board member currently holds a board seat at the investor';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."Location" IS 'City, State of the team or board member''s primary company''s headquarters. Gene';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."StartDate" IS 'Date the team or board member started their position';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."EndDate" IS 'Date the team or board member left their position if applicable';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorBoardTeamRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investorboardteamrelation_investorid ON main.InvestorBoardTeamRelation ("InvestorID");
CREATE INDEX idx_investorboardteamrelation_rowid ON main.InvestorBoardTeamRelation ("RowID");

\COPY main.InvestorBoardTeamRelation FROM 'data/InvestorBoardTeamRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

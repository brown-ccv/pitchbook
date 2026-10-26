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

\COPY main.InvestorBoardTeamRelation FROM 'data/InvestorBoardTeamRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_investorboardteamrelation_investorid ON main.InvestorBoardTeamRelation ("InvestorID");
CREATE INDEX idx_investorboardteamrelation_rowid ON main.InvestorBoardTeamRelation ("RowID");

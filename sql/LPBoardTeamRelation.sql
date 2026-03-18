-- Auto-generated from data dictionary for table: LPBoardTeamRelation
-- Columns: 15

DROP TABLE IF EXISTS main.LPBoardTeamRelation CASCADE;

CREATE TABLE main.LPBoardTeamRelation (
    LimitedPartnerID text,  -- Unique identifier for the limited partner (PbID). Relates to unique LimitedPartn
    PersonID text,  -- Unique identifier for the team member (PbID)
    PersonName text,  -- Team member''s full name
    FullTitle text,  -- Team member''s full title
    IsOnBoard text,  -- Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person 
    RepresentingID text,  -- Unique identifier (PbID) for the representing entity of the board member (e.g. 4
    RepresentingName text,  -- The full name for the representing entity of the board member (e.g. Andreeseen H
    RoleOnBoard text,  -- The board members role if applicable. Blank or null for non-board members
    RoleCount integer,  -- Number of roles the person is affiliated with
    Location text,  -- City, State of the board member''s primary company''s headquarters. Generally ci
    IsCurrent text,  -- ''Yes'' if the team member is currently employed at the investor; ''No'' if the 
    StartDate date,  -- Date the team member started their position
    EndDate date,  -- Date the team member left their position if applicable
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.LPBoardTeamRelation.LimitedPartnerID IS 'Unique identifier for the limited partner (PbID). Relates to unique LimitedPartn';
COMMENT ON COLUMN main.LPBoardTeamRelation.PersonID IS 'Unique identifier for the team member (PbID)';
COMMENT ON COLUMN main.LPBoardTeamRelation.PersonName IS 'Team member''s full name';
COMMENT ON COLUMN main.LPBoardTeamRelation.FullTitle IS 'Team member''s full title';
COMMENT ON COLUMN main.LPBoardTeamRelation.IsOnBoard IS 'Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person ';
COMMENT ON COLUMN main.LPBoardTeamRelation.RepresentingID IS 'Unique identifier (PbID) for the representing entity of the board member (e.g. 4';
COMMENT ON COLUMN main.LPBoardTeamRelation.RepresentingName IS 'The full name for the representing entity of the board member (e.g. Andreeseen H';
COMMENT ON COLUMN main.LPBoardTeamRelation.RoleOnBoard IS 'The board members role if applicable. Blank or null for non-board members';
COMMENT ON COLUMN main.LPBoardTeamRelation.RoleCount IS 'Number of roles the person is affiliated with';
COMMENT ON COLUMN main.LPBoardTeamRelation.Location IS 'City, State of the board member''s primary company''s headquarters. Generally ci';
COMMENT ON COLUMN main.LPBoardTeamRelation.IsCurrent IS '''Yes'' if the team member is currently employed at the investor; ''No'' if the ';
COMMENT ON COLUMN main.LPBoardTeamRelation.StartDate IS 'Date the team member started their position';
COMMENT ON COLUMN main.LPBoardTeamRelation.EndDate IS 'Date the team member left their position if applicable';
COMMENT ON COLUMN main.LPBoardTeamRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.LPBoardTeamRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_lpboardteamrelation_limitedpartnerid ON main.LPBoardTeamRelation (LimitedPartnerID);
CREATE INDEX idx_lpboardteamrelation_rowid ON main.LPBoardTeamRelation (RowID);

\COPY main.LPBoardTeamRelation FROM 'data/LPBoardTeamRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

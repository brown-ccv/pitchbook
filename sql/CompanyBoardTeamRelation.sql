-- Auto-generated from data dictionary for table: CompanyBoardTeamRelation
-- Columns: 14

DROP TABLE IF EXISTS main.CompanyBoardTeamRelation CASCADE;

CREATE TABLE main.CompanyBoardTeamRelation (
    CompanyID text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    PersonID text,  -- Unique identifier for person (PbID)
    PersonName text,  -- The person''s full name
    FullTitle text,  -- The full title of the person (e.g. Chief Executive Officer & Chairman)
    IsOnBoard text,  -- Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person 
    RepresentingID text,  -- Unique identifier (PbID) for the representing entity of the board member (e.g. 4
    RepresentingName text,  -- The full name for the representing entity of the board member (e.g. Andreeseen H
    RoleOnBoard text,  -- The board members role if applicable. Blank or null for non-board members
    IsCurrent text,  -- Tagged ''Yes'' if the person is a current employee or ''No'' if the person is a 
    Location text,  -- City, State of the board member''s or executive''s office location. Generally ci
    StartDate date,  -- Date the person started their position
    EndDate date,  -- Date the person left their position if applicable
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyBoardTeamRelation.CompanyID IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.PersonID IS 'Unique identifier for person (PbID)';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.PersonName IS 'The person''s full name';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.FullTitle IS 'The full title of the person (e.g. Chief Executive Officer & Chairman)';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.IsOnBoard IS 'Tagged ''Yes'' if the person is on the company''s board or ''No'' if the person ';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.RepresentingID IS 'Unique identifier (PbID) for the representing entity of the board member (e.g. 4';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.RepresentingName IS 'The full name for the representing entity of the board member (e.g. Andreeseen H';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.RoleOnBoard IS 'The board members role if applicable. Blank or null for non-board members';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.IsCurrent IS 'Tagged ''Yes'' if the person is a current employee or ''No'' if the person is a ';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.Location IS 'City, State of the board member''s or executive''s office location. Generally ci';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.StartDate IS 'Date the person started their position';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.EndDate IS 'Date the person left their position if applicable';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyBoardTeamRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyboardteamrelation_companyid ON main.CompanyBoardTeamRelation (CompanyID);
CREATE INDEX idx_companyboardteamrelation_rowid ON main.CompanyBoardTeamRelation (RowID);

\COPY main.CompanyBoardTeamRelation FROM 'data/CompanyBoardTeamRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

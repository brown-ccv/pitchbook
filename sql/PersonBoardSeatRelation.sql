-- Auto-generated from data dictionary for table: PersonBoardSeatRelation
-- Columns: 12

DROP TABLE IF EXISTS main.PersonBoardSeatRelation CASCADE;

CREATE TABLE main.PersonBoardSeatRelation (
    PersonID text,  -- Unique identifier for the person (PbID). Relates to the unique PersonID in Perso
    CompanyID text,  -- Unique identifier for the company (PbID) that the person holds the board seat at
    CompanyName text,  -- Name of the company where the board seat is held
    RepresentingID text,  -- Unique identifier (PbID) for the representing entity of the board member (e.g.  
    RepresentingName text,  -- The full name for the representing entity of the board member (e.g. Andreeseen H
    RoleOnBoard text,  -- The board member''s role if applicable. Blank or null for non-board members
    IsCurrent text,  -- Tagged ''Yes'' if the person is a current board member or ''No'' if the person i
    Location text,  -- City, State of the company''s headquarters. Generally city, country for global l
    StartDate date,  -- Date the person started their position
    EndDate date,  -- Date the person left their position if applicable
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.PersonBoardSeatRelation.PersonID IS 'Unique identifier for the person (PbID). Relates to the unique PersonID in Perso';
COMMENT ON COLUMN main.PersonBoardSeatRelation.CompanyID IS 'Unique identifier for the company (PbID) that the person holds the board seat at';
COMMENT ON COLUMN main.PersonBoardSeatRelation.CompanyName IS 'Name of the company where the board seat is held';
COMMENT ON COLUMN main.PersonBoardSeatRelation.RepresentingID IS 'Unique identifier (PbID) for the representing entity of the board member (e.g.  ';
COMMENT ON COLUMN main.PersonBoardSeatRelation.RepresentingName IS 'The full name for the representing entity of the board member (e.g. Andreeseen H';
COMMENT ON COLUMN main.PersonBoardSeatRelation.RoleOnBoard IS 'The board member''s role if applicable. Blank or null for non-board members';
COMMENT ON COLUMN main.PersonBoardSeatRelation.IsCurrent IS 'Tagged ''Yes'' if the person is a current board member or ''No'' if the person i';
COMMENT ON COLUMN main.PersonBoardSeatRelation.Location IS 'City, State of the company''s headquarters. Generally city, country for global l';
COMMENT ON COLUMN main.PersonBoardSeatRelation.StartDate IS 'Date the person started their position';
COMMENT ON COLUMN main.PersonBoardSeatRelation.EndDate IS 'Date the person left their position if applicable';
COMMENT ON COLUMN main.PersonBoardSeatRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.PersonBoardSeatRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_personboardseatrelation_personid ON main.PersonBoardSeatRelation (PersonID);
CREATE INDEX idx_personboardseatrelation_rowid ON main.PersonBoardSeatRelation (RowID);

\COPY main.PersonBoardSeatRelation FROM 'data/PersonBoardSeatRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

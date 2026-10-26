-- Auto-generated from data dictionary for table: FundTeamRelation
-- Columns: 11

DROP TABLE IF EXISTS main.FundTeamRelation CASCADE;

CREATE TABLE main.FundTeamRelation (
    "FundID" text,  -- Unique identifier for the fund (PbID). Relates to the unique FundID in Fund.csv
    "PersonID" text,  -- Unique identifier for the fund team member (PbID)
    "IsCurrent" text,  -- Tagged ''Yes'' if the person is a current member of the fund team or ''No'' if t
    "FullName" text,  -- Full name of the fund team member
    "FullTitle" text,  -- The full title of the fund team member
    "AffiliatedDeals" integer,  -- Number of affiliated deals the fund team member has served as lead partner on
    "AffiliatedFunds" integer,  -- Number of funds the fund team member is affiliated with
    "ActiveBoardSeats" integer,  -- Number of active board seats the team member sits on
    "Location" text,  -- City, State of the executive''s primary company''s headquarters. Generally city,
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.FundTeamRelation FROM 'data/FundTeamRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_fundteamrelation_fundid ON main.FundTeamRelation ("FundID");
CREATE INDEX idx_fundteamrelation_rowid ON main.FundTeamRelation ("RowID");

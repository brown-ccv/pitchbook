-- Auto-generated from data dictionary for table: FundLPCommitmentRelation
-- Columns: 12

DROP TABLE IF EXISTS main.FundLPCommitmentRelation CASCADE;

CREATE TABLE main.FundLPCommitmentRelation (
    "FundID" text,  -- Unique identifier for the fund (PbID). Relates to the unique FundID in Fund.csv
    "LimitedPartnerID" text,  -- Unique identifier for the limited partner (PbID) that committed to the fund
    "LimitedPartnerName" text,  -- Name of the limited partner that committed to the fund
    "LimitedPartnerType" text,  -- Institution type of the limited partner. (e.g. corporate pension, economic devel
    "CommitmentID" text,  -- Unique ID of the LP''s commitment into the fund
    "CommitmentStatus" text,  -- Status of the commitment that includes either ''Current'' or ''Former''
    "Commitment" float8,  -- Dollar amount of the commitment by the limited partner to the fund
    "CommitmentDate" date,  -- Date the commitment was made by the limited partner to the fund
    "CommitmentType" text,  -- Type of commitment made by the limited partner to the fund
    "Comments" text,  -- Additional notes on commitment if available
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.FundLPCommitmentRelation FROM 'data/FundLPCommitmentRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_fundlpcommitmentrelation_fundid ON main.FundLPCommitmentRelation ("FundID");
CREATE INDEX idx_fundlpcommitmentrelation_rowid ON main.FundLPCommitmentRelation ("RowID");

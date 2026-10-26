-- Auto-generated from data dictionary for table: LPFundCommitmentRelation
-- Columns: 7

DROP TABLE IF EXISTS main.LPFundCommitmentRelation CASCADE;

CREATE TABLE main.LPFundCommitmentRelation (
    "LimitedPartnerID" text,  -- Unique identifier for the limited partner (PbID). Relates to the unique LimitedP
    "FundID" text,  -- Unique identifier for the fund (PbID) that the limited partner committed to
    "FundName" text,  -- Name of the fund that the limited partner committed to
    "Commitment" float8,  -- Dollar amount of the commitment by the limited partner to the fund
    "CommitmentDate" date,  -- Date the commitment was made by the limited partner to the fund
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.LPFundCommitmentRelation FROM 'data/LPFundCommitmentRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_lpfundcommitmentrelation_limitedpartnerid ON main.LPFundCommitmentRelation ("LimitedPartnerID");
CREATE INDEX idx_lpfundcommitmentrelation_rowid ON main.LPFundCommitmentRelation ("RowID");

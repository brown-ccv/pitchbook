-- Auto-generated from data dictionary for table: InvestorLimitedPartnerRelation
-- Columns: 11

DROP TABLE IF EXISTS main.InvestorLimitedPartnerRelation CASCADE;

CREATE TABLE main.InvestorLimitedPartnerRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "LimitedPartnerID" text,  -- Unique identifier for the limited partner (PbID)
    "LimitedPartnerName" text,  -- Name of the limited partner
    "LimitedPartnerLocation" text,  -- City, State of limited partner''s headquarters
    "Type" text,  -- The institution type of the limited partner. (e.g. corporate pension, economic d
    "CommitmentsTo" integer,  -- Count of the number of commitments made to the investor
    "LastCommitmentDate" date,  -- Date of the limited partner''s most recent commitment to that investor
    "LastCommitmentFund" text,  -- Fund managed by the investor that received the latest commitment by the limited 
    "TotalCommitments" integer,  -- Count of the total commitments the limited partner has made
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.InvestorLimitedPartnerRelation FROM 'data/InvestorLimitedPartnerRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_investorlimitedpartnerrelation_investorid ON main.InvestorLimitedPartnerRelation ("InvestorID");
CREATE INDEX idx_investorlimitedpartnerrelation_rowid ON main.InvestorLimitedPartnerRelation ("RowID");

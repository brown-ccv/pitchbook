-- Auto-generated from data dictionary for table: InvestorLimitedPartnerRelation
-- Columns: 11

DROP TABLE IF EXISTS main.InvestorLimitedPartnerRelation CASCADE;

CREATE TABLE main.InvestorLimitedPartnerRelation (
    InvestorID text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    LimitedPartnerID text,  -- Unique identifier for the limited partner (PbID)
    LimitedPartnerName text,  -- Name of the limited partner
    LimitedPartnerLocation text,  -- City, State of limited partner''s headquarters
    Type text,  -- The institution type of the limited partner. (e.g. corporate pension, economic d
    CommitmentsTo integer,  -- Count of the number of commitments made to the investor
    LastCommitmentDate date,  -- Date of the limited partner''s most recent commitment to that investor
    LastCommitmentFund text,  -- Fund managed by the investor that received the latest commitment by the limited 
    TotalCommitments integer,  -- Count of the total commitments the limited partner has made
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.InvestorID IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.LimitedPartnerID IS 'Unique identifier for the limited partner (PbID)';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.LimitedPartnerName IS 'Name of the limited partner';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.LimitedPartnerLocation IS 'City, State of limited partner''s headquarters';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.Type IS 'The institution type of the limited partner. (e.g. corporate pension, economic d';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.CommitmentsTo IS 'Count of the number of commitments made to the investor';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.LastCommitmentDate IS 'Date of the limited partner''s most recent commitment to that investor';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.LastCommitmentFund IS 'Fund managed by the investor that received the latest commitment by the limited ';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.TotalCommitments IS 'Count of the total commitments the limited partner has made';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorLimitedPartnerRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investorlimitedpartnerrelation_investorid ON main.InvestorLimitedPartnerRelation (InvestorID);
CREATE INDEX idx_investorlimitedpartnerrelation_rowid ON main.InvestorLimitedPartnerRelation (RowID);

\COPY main.InvestorLimitedPartnerRelation FROM 'data/InvestorLimitedPartnerRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

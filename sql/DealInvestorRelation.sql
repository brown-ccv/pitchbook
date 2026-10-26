-- Auto-generated from data dictionary for table: DealInvestorRelation
-- Columns: 14

DROP TABLE IF EXISTS main.DealInvestorRelation CASCADE;

CREATE TABLE main.DealInvestorRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "InvestorID" text,  -- Unique identifier for investor (PbID)
    "InvestorName" text,  -- Name of the investor institution that provided financing on the deal round
    "InvestorStatus" text,  -- The status of the investor for the deal round. Statuses include ''Pending'', ''N
    "IsLeadInvestor" text,  -- ''Yes'' if the investor is the lead investor on the round or ''No'' if not
    "InvestorFundID" text,  -- Unique identifier for the investor''s fund (PbID) tagged to the deal round. Blan
    "InvestorFundName" text,  -- Fund name if there is a fund tagged to the deal round
    "InvestorWebsite" text,  -- The investor''s website
    "InvestorInvestmentAmount" float8,  -- Investor''s individual contribution on the deal
    "NumberOfSharesAcquired" bigint,  -- Number of shares acquired per investor on the deal
    "LeadPartnerID" text,  -- Unique identifier (PbID) of the lead partner
    "LeadPartnerName" text,  -- Full name of the lead partner
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.DealInvestorRelation FROM 'data/DealInvestorRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_dealinvestorrelation_dealid ON main.DealInvestorRelation ("DealID");
CREATE INDEX idx_dealinvestorrelation_rowid ON main.DealInvestorRelation ("RowID");

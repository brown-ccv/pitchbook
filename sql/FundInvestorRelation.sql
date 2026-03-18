-- Auto-generated from data dictionary for table: FundInvestorRelation
-- Columns: 6

DROP TABLE IF EXISTS main.FundInvestorRelation CASCADE;

CREATE TABLE main.FundInvestorRelation (
    FundID text,  -- Unique identifier for the fund (PbID). Relates to the unique FundID in Fund.csv
    InvestorID text,  -- Unique identifier for investor (PbID) that manages the fund
    InvestorName text,  -- Name of the investor that manages the fund
    InvestorWebsite text,  -- Website of the investor that manages the fund
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.FundInvestorRelation.FundID IS 'Unique identifier for the fund (PbID). Relates to the unique FundID in Fund.csv';
COMMENT ON COLUMN main.FundInvestorRelation.InvestorID IS 'Unique identifier for investor (PbID) that manages the fund';
COMMENT ON COLUMN main.FundInvestorRelation.InvestorName IS 'Name of the investor that manages the fund';
COMMENT ON COLUMN main.FundInvestorRelation.InvestorWebsite IS 'Website of the investor that manages the fund';
COMMENT ON COLUMN main.FundInvestorRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.FundInvestorRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_fundinvestorrelation_fundid ON main.FundInvestorRelation (FundID);
CREATE INDEX idx_fundinvestorrelation_rowid ON main.FundInvestorRelation (RowID);

\COPY main.FundInvestorRelation FROM 'data/FundInvestorRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

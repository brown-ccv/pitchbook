-- Auto-generated from data dictionary for table: DealTrancheRelation
-- Columns: 16

DROP TABLE IF EXISTS main.DealTrancheRelation CASCADE;

CREATE TABLE main.DealTrancheRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "TrancheDate" date,  -- The date of the tranche in round of financing
    "Amount" float8,  -- Amount of the tranche ($)
    "FinancingType" text,  -- This is the type of financing used in the tranche
    "StockType" text,  -- This is the stock type used in the tranche
    "StockSeriesType" text,  -- This is the current stock''s placement in the overall sequence of preferred stoc
    "ConversionStatus" text,  -- This field relates to whether preferred stock that the investor has received is 
    "ConversionDate" date,  -- The date on which the stock is convertible
    "Investor" text,  -- Investor who has invested in the tranched round
    "InvestorID" text,  -- Unique identifier for the investor
    "Investor2" text,  -- Other investor who has invested in the tranched round
    "InvestorID2" text,  -- Unique identifier for the other investor on the tranche
    "Investor3" text,  -- Other investor who has invested in the tranched round
    "InvestorID3" text,  -- Unique identifier for the other investor on the tranche
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.DealTrancheRelation."DealID" IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.DealTrancheRelation."TrancheDate" IS 'The date of the tranche in round of financing';
COMMENT ON COLUMN main.DealTrancheRelation."Amount" IS 'Amount of the tranche ($)';
COMMENT ON COLUMN main.DealTrancheRelation."FinancingType" IS 'This is the type of financing used in the tranche';
COMMENT ON COLUMN main.DealTrancheRelation."StockType" IS 'This is the stock type used in the tranche';
COMMENT ON COLUMN main.DealTrancheRelation."StockSeriesType" IS 'This is the current stock''s placement in the overall sequence of preferred stoc';
COMMENT ON COLUMN main.DealTrancheRelation."ConversionStatus" IS 'This field relates to whether preferred stock that the investor has received is ';
COMMENT ON COLUMN main.DealTrancheRelation."ConversionDate" IS 'The date on which the stock is convertible';
COMMENT ON COLUMN main.DealTrancheRelation."Investor" IS 'Investor who has invested in the tranched round';
COMMENT ON COLUMN main.DealTrancheRelation."InvestorID" IS 'Unique identifier for the investor';
COMMENT ON COLUMN main.DealTrancheRelation."Investor2" IS 'Other investor who has invested in the tranched round';
COMMENT ON COLUMN main.DealTrancheRelation."InvestorID2" IS 'Unique identifier for the other investor on the tranche';
COMMENT ON COLUMN main.DealTrancheRelation."Investor3" IS 'Other investor who has invested in the tranched round';
COMMENT ON COLUMN main.DealTrancheRelation."InvestorID3" IS 'Unique identifier for the other investor on the tranche';
COMMENT ON COLUMN main.DealTrancheRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.DealTrancheRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_dealtrancherelation_dealid ON main.DealTrancheRelation ("DealID");
CREATE INDEX idx_dealtrancherelation_rowid ON main.DealTrancheRelation ("RowID");

\COPY main.DealTrancheRelation FROM 'data/DealTrancheRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

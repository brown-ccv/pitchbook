-- Auto-generated from data dictionary for table: DealSellerRelation
-- Columns: 13

DROP TABLE IF EXISTS main.DealSellerRelation CASCADE;

CREATE TABLE main.DealSellerRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "Seller_ExiterID" text,  -- Unique identifier for the seller/exiter
    "Seller_ExiterName" text,  -- Name of the seller/exiter
    "Partial_Full" text,  -- Partial'' if the seller/exiter remains invested in the target company and ''full
    "PercentOfCompanySold" float8,  -- Percent of company sold during the round
    "PercentOfCompanyStillHeld" float8,  -- Share of company still held after this round. Value rang 0.00-100.00
    "Seller_ExiterFundID" text,  -- Unique identifier for the seller/exiter''s fund that exited, if available (PbID)
    "Seller_ExiterFundName" text,  -- Name of the seller/exiter''s fund that exited, if available (PbID)
    "EntryAmount" float8,  -- The entry amount
    "ExitAmount" float8,  -- The exit amount
    "TimeToExit" float8,  -- Time in years before an exit happened
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.DealSellerRelation FROM 'data/DealSellerRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_dealsellerrelation_dealid ON main.DealSellerRelation ("DealID");
CREATE INDEX idx_dealsellerrelation_rowid ON main.DealSellerRelation ("RowID");

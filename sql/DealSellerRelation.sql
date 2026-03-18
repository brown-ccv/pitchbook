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

COMMENT ON COLUMN main.DealSellerRelation."DealID" IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.DealSellerRelation."Seller_ExiterID" IS 'Unique identifier for the seller/exiter';
COMMENT ON COLUMN main.DealSellerRelation."Seller_ExiterName" IS 'Name of the seller/exiter';
COMMENT ON COLUMN main.DealSellerRelation."Partial_Full" IS 'Partial'' if the seller/exiter remains invested in the target company and ''full';
COMMENT ON COLUMN main.DealSellerRelation."PercentOfCompanySold" IS 'Percent of company sold during the round';
COMMENT ON COLUMN main.DealSellerRelation."PercentOfCompanyStillHeld" IS 'Share of company still held after this round. Value rang 0.00-100.00';
COMMENT ON COLUMN main.DealSellerRelation."Seller_ExiterFundID" IS 'Unique identifier for the seller/exiter''s fund that exited, if available (PbID)';
COMMENT ON COLUMN main.DealSellerRelation."Seller_ExiterFundName" IS 'Name of the seller/exiter''s fund that exited, if available (PbID)';
COMMENT ON COLUMN main.DealSellerRelation."EntryAmount" IS 'The entry amount';
COMMENT ON COLUMN main.DealSellerRelation."ExitAmount" IS 'The exit amount';
COMMENT ON COLUMN main.DealSellerRelation."TimeToExit" IS 'Time in years before an exit happened';
COMMENT ON COLUMN main.DealSellerRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.DealSellerRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_dealsellerrelation_dealid ON main.DealSellerRelation ("DealID");
CREATE INDEX idx_dealsellerrelation_rowid ON main.DealSellerRelation ("RowID");

\COPY main.DealSellerRelation FROM 'data/DealSellerRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

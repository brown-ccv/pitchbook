-- Auto-generated from data dictionary for table: CompanyStockExchangeRelation
-- Columns: 7

DROP TABLE IF EXISTS main.CompanyStockExchangeRelation CASCADE;

CREATE TABLE main.CompanyStockExchangeRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "Ticker" text,  -- Symbol used to identify the company on the public market
    "Exchange" text,  -- Exchange on which the company is registered
    "TradedCurrency" text,  -- Traded Currency
    "ListingCountry" text,  -- Country of exchange
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyStockExchangeRelation FROM 'data/CompanyStockExchangeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companystockexchangerelation_companyid ON main.CompanyStockExchangeRelation ("CompanyID");
CREATE INDEX idx_companystockexchangerelation_rowid ON main.CompanyStockExchangeRelation ("RowID");

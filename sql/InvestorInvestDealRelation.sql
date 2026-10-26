-- Auto-generated from data dictionary for table: InvestorInvestDealRelation
-- Columns: 7

DROP TABLE IF EXISTS main.InvestorInvestDealRelation CASCADE;

CREATE TABLE main.InvestorInvestDealRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "DealType" text,  -- Deal type that the investor''s investments are grouped by
    "Deals" integer,  -- Total count of deals the investor has done in that deal type
    "MedianSize" float8,  -- Median size of all deals the investor has done in that year and deal type
    "LastInvestment" date,  -- Date of the investor''s last investment of that type
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.InvestorInvestDealRelation FROM 'data/InvestorInvestDealRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_investorinvestdealrelation_investorid ON main.InvestorInvestDealRelation ("InvestorID");
CREATE INDEX idx_investorinvestdealrelation_rowid ON main.InvestorInvestDealRelation ("RowID");

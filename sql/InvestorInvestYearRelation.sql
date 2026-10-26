-- Auto-generated from data dictionary for table: InvestorInvestYearRelation
-- Columns: 7

DROP TABLE IF EXISTS main.InvestorInvestYearRelation CASCADE;

CREATE TABLE main.InvestorInvestYearRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "Year" integer,  -- Year that the investor''s investments are grouped by
    "Deals" integer,  -- Total count of deals the investor has done in that year
    "MedianSize" float8,  -- Median size of all deals the investor has done in that year and deal type
    "LastInvestment" date,  -- Date of the investor''s last investment during the year
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.InvestorInvestYearRelation FROM 'data/InvestorInvestYearRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_investorinvestyearrelation_investorid ON main.InvestorInvestYearRelation ("InvestorID");
CREATE INDEX idx_investorinvestyearrelation_rowid ON main.InvestorInvestYearRelation ("RowID");

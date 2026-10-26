-- Auto-generated from data dictionary for table: InvestorEntityTypeRelation
-- Columns: 5

DROP TABLE IF EXISTS main.InvestorEntityTypeRelation CASCADE;

CREATE TABLE main.InvestorEntityTypeRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "EntityType" text,  -- Entity type of investor
    "IsPrimary" text,  -- Investor type is primary or not
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.InvestorEntityTypeRelation FROM 'data/InvestorEntityTypeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_investorentitytyperelation_investorid ON main.InvestorEntityTypeRelation ("InvestorID");
CREATE INDEX idx_investorentitytyperelation_rowid ON main.InvestorEntityTypeRelation ("RowID");

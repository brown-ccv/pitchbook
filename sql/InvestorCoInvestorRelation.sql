-- Auto-generated from data dictionary for table: InvestorCoInvestorRelation
-- Columns: 6

DROP TABLE IF EXISTS main.InvestorCoInvestorRelation CASCADE;

CREATE TABLE main.InvestorCoInvestorRelation (
    "InvestorID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "Co_InvestorID" text,  -- Unique identifier for the co-investor (PbID)
    "Co_InvestorName" text,  -- Name of the co-investor (PbID)
    "NumberOfInvestmentsWith" integer,  -- The number of investments the co-investor has made with the investor
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorCoInvestorRelation."InvestorID" IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.InvestorCoInvestorRelation."Co_InvestorID" IS 'Unique identifier for the co-investor (PbID)';
COMMENT ON COLUMN main.InvestorCoInvestorRelation."Co_InvestorName" IS 'Name of the co-investor (PbID)';
COMMENT ON COLUMN main.InvestorCoInvestorRelation."NumberOfInvestmentsWith" IS 'The number of investments the co-investor has made with the investor';
COMMENT ON COLUMN main.InvestorCoInvestorRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorCoInvestorRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investorcoinvestorrelation_investorid ON main.InvestorCoInvestorRelation ("InvestorID");
CREATE INDEX idx_investorcoinvestorrelation_rowid ON main.InvestorCoInvestorRelation ("RowID");

\COPY main.InvestorCoInvestorRelation FROM 'data/InvestorCoInvestorRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

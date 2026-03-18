-- Auto-generated from data dictionary for table: FundCloseHistoryRelation
-- Columns: 6

DROP TABLE IF EXISTS main.FundCloseHistoryRelation CASCADE;

CREATE TABLE main.FundCloseHistoryRelation (
    "FundID" text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    "Amount" text,  -- The amount related to that fund close
    "FundCloseDate" date,  -- Date of the fund closed
    "FundCloseType" text,  -- Type of fund close; examples: ''First Close'', ''Interim Close'', ''Second Close
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.FundCloseHistoryRelation."FundID" IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.FundCloseHistoryRelation."Amount" IS 'The amount related to that fund close';
COMMENT ON COLUMN main.FundCloseHistoryRelation."FundCloseDate" IS 'Date of the fund closed';
COMMENT ON COLUMN main.FundCloseHistoryRelation."FundCloseType" IS 'Type of fund close; examples: ''First Close'', ''Interim Close'', ''Second Close';
COMMENT ON COLUMN main.FundCloseHistoryRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.FundCloseHistoryRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_fundclosehistoryrelation_fundid ON main.FundCloseHistoryRelation ("FundID");
CREATE INDEX idx_fundclosehistoryrelation_rowid ON main.FundCloseHistoryRelation ("RowID");

\COPY main.FundCloseHistoryRelation FROM 'data/FundCloseHistoryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

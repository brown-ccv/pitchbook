-- Auto-generated from data dictionary for table: FundServiceProviderRelation
-- Columns: 9

DROP TABLE IF EXISTS main.FundServiceProviderRelation CASCADE;

CREATE TABLE main.FundServiceProviderRelation (
    "FundID" text,  -- Unique identifier for fund the (PbID). Relates to the unique FundID in Fund.csv
    "ServiceProviderID" text,  -- Unique identifier for the service provider (PbID)
    "ServiceProviderName" text,  -- Name of the service provider
    "ServiceProvided" text,  -- Type of service provided by the service provider
    "ServiceTo" text,  -- Who the service was provided to. Examples include ''Investor'', ''LP'', and ''Se
    "ServiceToID" text,  -- Unique identifier of the entity of who the service was provided to
    "ServiceToName" text,  -- Name of the entity of who the service was provided to
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.FundServiceProviderRelation."FundID" IS 'Unique identifier for fund the (PbID). Relates to the unique FundID in Fund.csv';
COMMENT ON COLUMN main.FundServiceProviderRelation."ServiceProviderID" IS 'Unique identifier for the service provider (PbID)';
COMMENT ON COLUMN main.FundServiceProviderRelation."ServiceProviderName" IS 'Name of the service provider';
COMMENT ON COLUMN main.FundServiceProviderRelation."ServiceProvided" IS 'Type of service provided by the service provider';
COMMENT ON COLUMN main.FundServiceProviderRelation."ServiceTo" IS 'Who the service was provided to. Examples include ''Investor'', ''LP'', and ''Se';
COMMENT ON COLUMN main.FundServiceProviderRelation."ServiceToID" IS 'Unique identifier of the entity of who the service was provided to';
COMMENT ON COLUMN main.FundServiceProviderRelation."ServiceToName" IS 'Name of the entity of who the service was provided to';
COMMENT ON COLUMN main.FundServiceProviderRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.FundServiceProviderRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_fundserviceproviderrelation_fundid ON main.FundServiceProviderRelation ("FundID");
CREATE INDEX idx_fundserviceproviderrelation_rowid ON main.FundServiceProviderRelation ("RowID");

\COPY main.FundServiceProviderRelation FROM 'data/FundServiceProviderRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

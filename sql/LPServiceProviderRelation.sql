-- Auto-generated from data dictionary for table: LPServiceProviderRelation
-- Columns: 8

DROP TABLE IF EXISTS main.LPServiceProviderRelation CASCADE;

CREATE TABLE main.LPServiceProviderRelation (
    "LimitedPartnerID" text,  -- Unique identifier for the limited partner (PbID). Relates to the unique LimitedP
    "ServiceProviderID" text,  -- Unique identifier for the service provider (PbID)
    "ServiceProviderName" text,  -- The formal name of the service provider used on the service provider''s PitchBoo
    "ServiceProvided" text,  -- The type of service provided to the company (e.g. Legal Advisor, Advisor: Genera
    "ServiceProviderType" text,  -- Primary type of service provider
    "ServiceProviderStatus" text,  -- Current status of the service provider in relation to the client (e.g. General S
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.LPServiceProviderRelation."LimitedPartnerID" IS 'Unique identifier for the limited partner (PbID). Relates to the unique LimitedP';
COMMENT ON COLUMN main.LPServiceProviderRelation."ServiceProviderID" IS 'Unique identifier for the service provider (PbID)';
COMMENT ON COLUMN main.LPServiceProviderRelation."ServiceProviderName" IS 'The formal name of the service provider used on the service provider''s PitchBoo';
COMMENT ON COLUMN main.LPServiceProviderRelation."ServiceProvided" IS 'The type of service provided to the company (e.g. Legal Advisor, Advisor: Genera';
COMMENT ON COLUMN main.LPServiceProviderRelation."ServiceProviderType" IS 'Primary type of service provider';
COMMENT ON COLUMN main.LPServiceProviderRelation."ServiceProviderStatus" IS 'Current status of the service provider in relation to the client (e.g. General S';
COMMENT ON COLUMN main.LPServiceProviderRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.LPServiceProviderRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_lpserviceproviderrelation_limitedpartnerid ON main.LPServiceProviderRelation ("LimitedPartnerID");
CREATE INDEX idx_lpserviceproviderrelation_rowid ON main.LPServiceProviderRelation ("RowID");

\COPY main.LPServiceProviderRelation FROM 'data/LPServiceProviderRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

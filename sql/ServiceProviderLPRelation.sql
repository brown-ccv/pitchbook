-- Auto-generated from data dictionary for table: ServiceProviderLPRelation
-- Columns: 6

DROP TABLE IF EXISTS main.ServiceProviderLPRelation CASCADE;

CREATE TABLE main.ServiceProviderLPRelation (
    "ServiceProviderID" text,  -- Unique identifier for the service provider (PbID). Relates to the unique Service
    "LimitedPartnerID" text,  -- Unique identifier of the limited partner (PbID) that received the service from t
    "LimitedPartnerName" text,  -- Name of the limited partner that received the service from the service provider
    "ServiceProvided" text,  -- Type of service provided to the company
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.ServiceProviderLPRelation."ServiceProviderID" IS 'Unique identifier for the service provider (PbID). Relates to the unique Service';
COMMENT ON COLUMN main.ServiceProviderLPRelation."LimitedPartnerID" IS 'Unique identifier of the limited partner (PbID) that received the service from t';
COMMENT ON COLUMN main.ServiceProviderLPRelation."LimitedPartnerName" IS 'Name of the limited partner that received the service from the service provider';
COMMENT ON COLUMN main.ServiceProviderLPRelation."ServiceProvided" IS 'Type of service provided to the company';
COMMENT ON COLUMN main.ServiceProviderLPRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.ServiceProviderLPRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_serviceproviderlprelation_serviceproviderid ON main.ServiceProviderLPRelation ("ServiceProviderID");
CREATE INDEX idx_serviceproviderlprelation_rowid ON main.ServiceProviderLPRelation ("RowID");

\COPY main.ServiceProviderLPRelation FROM 'data/ServiceProviderLPRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

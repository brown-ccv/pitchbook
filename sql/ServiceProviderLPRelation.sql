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

\COPY main.ServiceProviderLPRelation FROM 'data/ServiceProviderLPRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_serviceproviderlprelation_serviceproviderid ON main.ServiceProviderLPRelation ("ServiceProviderID");
CREATE INDEX idx_serviceproviderlprelation_rowid ON main.ServiceProviderLPRelation ("RowID");

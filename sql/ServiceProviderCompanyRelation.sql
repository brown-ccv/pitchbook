-- Auto-generated from data dictionary for table: ServiceProviderCompanyRelation
-- Columns: 7

DROP TABLE IF EXISTS main.ServiceProviderCompanyRelation CASCADE;

CREATE TABLE main.ServiceProviderCompanyRelation (
    ServiceProviderID text,  -- Unique identifier for the service provider (PbID). Relates to the unique Service
    CompanyID text,  -- Unique identifier of the company (PbID) that received the service from the servi
    CompanyName text,  -- Name of the company that received the service from the service provider
    ServiceType text,  -- Categorization of service provided to the company. Types of service include ''Ge
    ServiceProvided text,  -- Type of service provided to the company
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.ServiceProviderCompanyRelation.ServiceProviderID IS 'Unique identifier for the service provider (PbID). Relates to the unique Service';
COMMENT ON COLUMN main.ServiceProviderCompanyRelation.CompanyID IS 'Unique identifier of the company (PbID) that received the service from the servi';
COMMENT ON COLUMN main.ServiceProviderCompanyRelation.CompanyName IS 'Name of the company that received the service from the service provider';
COMMENT ON COLUMN main.ServiceProviderCompanyRelation.ServiceType IS 'Categorization of service provided to the company. Types of service include ''Ge';
COMMENT ON COLUMN main.ServiceProviderCompanyRelation.ServiceProvided IS 'Type of service provided to the company';
COMMENT ON COLUMN main.ServiceProviderCompanyRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.ServiceProviderCompanyRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_serviceprovidercompanyrelation_serviceproviderid ON main.ServiceProviderCompanyRelation (ServiceProviderID);
CREATE INDEX idx_serviceprovidercompanyrelation_rowid ON main.ServiceProviderCompanyRelation (RowID);

\COPY main.ServiceProviderCompanyRelation FROM 'data/ServiceProviderCompanyRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

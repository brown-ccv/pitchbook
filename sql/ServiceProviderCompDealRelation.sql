-- Auto-generated from data dictionary for table: ServiceProviderCompDealRelation
-- Columns: 10

DROP TABLE IF EXISTS main.ServiceProviderCompDealRelation CASCADE;

CREATE TABLE main.ServiceProviderCompDealRelation (
    ServiceProviderID text,  -- Unique identifier for the service provider (PbID). Relates to the unique Service
    CompanyID text,  -- Unique identifier of the company (PbID) that received the service from the servi
    CompanyName text,  -- Name of the company that received the service from the service provider
    ServiceProvided text,  -- Type of service provided to the company
    DealID text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    DealDate date,  -- Date of the financial transaction that the service provider provided services on
    DealNo integer,  -- Number given to the financial round based on the financing history of the compan
    DealType text,  -- Identifies and categorizes distinct types of transaction or financing rounds bet
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.ServiceProviderCompDealRelation.ServiceProviderID IS 'Unique identifier for the service provider (PbID). Relates to the unique Service';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.CompanyID IS 'Unique identifier of the company (PbID) that received the service from the servi';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.CompanyName IS 'Name of the company that received the service from the service provider';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.ServiceProvided IS 'Type of service provided to the company';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.DealID IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.DealDate IS 'Date of the financial transaction that the service provider provided services on';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.DealNo IS 'Number given to the financial round based on the financing history of the compan';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.DealType IS 'Identifies and categorizes distinct types of transaction or financing rounds bet';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.ServiceProviderCompDealRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_serviceprovidercompdealrelation_serviceproviderid ON main.ServiceProviderCompDealRelation (ServiceProviderID);
CREATE INDEX idx_serviceprovidercompdealrelation_rowid ON main.ServiceProviderCompDealRelation (RowID);

\COPY main.ServiceProviderCompDealRelation FROM 'data/ServiceProviderCompDealRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

-- Auto-generated from data dictionary for table: ServiceProviderInvFundRelation
-- Columns: 8

DROP TABLE IF EXISTS main.ServiceProviderInvFundRelation CASCADE;

CREATE TABLE main.ServiceProviderInvFundRelation (
    "ServiceProviderID" text,  -- Unique identifier for the service provider (PbID). Relates to the unique Service
    "FundID" text,  -- Unique identifier of the fund (PbID) that received the service from the service 
    "FundName" text,  -- Name of the fund that received the service from the service provider
    "InvestorID" text,  -- Unique identifier of the investor (PbID) that manages the fund
    "InvestorName" text,  -- Name of the investor that manages the fund
    "ServiceProvided" text,  -- Type of service provided to the company
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.ServiceProviderInvFundRelation FROM 'data/ServiceProviderInvFundRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_serviceproviderinvfundrelation_serviceproviderid ON main.ServiceProviderInvFundRelation ("ServiceProviderID");
CREATE INDEX idx_serviceproviderinvfundrelation_rowid ON main.ServiceProviderInvFundRelation ("RowID");

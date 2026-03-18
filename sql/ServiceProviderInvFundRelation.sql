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

COMMENT ON COLUMN main.ServiceProviderInvFundRelation."ServiceProviderID" IS 'Unique identifier for the service provider (PbID). Relates to the unique Service';
COMMENT ON COLUMN main.ServiceProviderInvFundRelation."FundID" IS 'Unique identifier of the fund (PbID) that received the service from the service ';
COMMENT ON COLUMN main.ServiceProviderInvFundRelation."FundName" IS 'Name of the fund that received the service from the service provider';
COMMENT ON COLUMN main.ServiceProviderInvFundRelation."InvestorID" IS 'Unique identifier of the investor (PbID) that manages the fund';
COMMENT ON COLUMN main.ServiceProviderInvFundRelation."InvestorName" IS 'Name of the investor that manages the fund';
COMMENT ON COLUMN main.ServiceProviderInvFundRelation."ServiceProvided" IS 'Type of service provided to the company';
COMMENT ON COLUMN main.ServiceProviderInvFundRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.ServiceProviderInvFundRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_serviceproviderinvfundrelation_serviceproviderid ON main.ServiceProviderInvFundRelation ("ServiceProviderID");
CREATE INDEX idx_serviceproviderinvfundrelation_rowid ON main.ServiceProviderInvFundRelation ("RowID");

\COPY main.ServiceProviderInvFundRelation FROM 'data/ServiceProviderInvFundRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

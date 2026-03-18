-- Auto-generated from data dictionary for table: ServiceProviderInvestorRelation
-- Columns: 8

DROP TABLE IF EXISTS main.ServiceProviderInvestorRelation CASCADE;

CREATE TABLE main.ServiceProviderInvestorRelation (
    "ServiceProviderID" text,  -- Unique identifier for the service provider (PbID). Relates to the unique Service
    "InvestorID" text,  -- Unique identifier of the investor (PbID) that received the service from the serv
    "InvestorName" text,  -- Name of the investor that received the service from the service provider
    "ServiceType" text,  -- Categorization of service provided to the company. Types of service include ''Ge
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file. May be blank if
    "ServiceProvided" text,  -- Type of service provided to the company
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.ServiceProviderInvestorRelation."ServiceProviderID" IS 'Unique identifier for the service provider (PbID). Relates to the unique Service';
COMMENT ON COLUMN main.ServiceProviderInvestorRelation."InvestorID" IS 'Unique identifier of the investor (PbID) that received the service from the serv';
COMMENT ON COLUMN main.ServiceProviderInvestorRelation."InvestorName" IS 'Name of the investor that received the service from the service provider';
COMMENT ON COLUMN main.ServiceProviderInvestorRelation."ServiceType" IS 'Categorization of service provided to the company. Types of service include ''Ge';
COMMENT ON COLUMN main.ServiceProviderInvestorRelation."DealID" IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file. May be blank if';
COMMENT ON COLUMN main.ServiceProviderInvestorRelation."ServiceProvided" IS 'Type of service provided to the company';
COMMENT ON COLUMN main.ServiceProviderInvestorRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.ServiceProviderInvestorRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_serviceproviderinvestorrelation_serviceproviderid ON main.ServiceProviderInvestorRelation ("ServiceProviderID");
CREATE INDEX idx_serviceproviderinvestorrelation_rowid ON main.ServiceProviderInvestorRelation ("RowID");

\COPY main.ServiceProviderInvestorRelation FROM 'data/ServiceProviderInvestorRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

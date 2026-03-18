-- Auto-generated from data dictionary for table: InvestorServiceProviderRelation
-- Columns: 7

DROP TABLE IF EXISTS main.InvestorServiceProviderRelation CASCADE;

CREATE TABLE main.InvestorServiceProviderRelation (
    InvestorID text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    ServiceProviderID text,  -- Unique identifier for the service provider (PbID)
    ServiceProviderName text,  -- The formal name of the service provider used on the service provider''s PitchBoo
    ServiceProvided text,  -- The type of service provided to the investor (e.g. Legal Advisor, Advisor: Gener
    ServiceProviderType text,  -- Primary type of service provider
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorServiceProviderRelation.InvestorID IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.InvestorServiceProviderRelation.ServiceProviderID IS 'Unique identifier for the service provider (PbID)';
COMMENT ON COLUMN main.InvestorServiceProviderRelation.ServiceProviderName IS 'The formal name of the service provider used on the service provider''s PitchBoo';
COMMENT ON COLUMN main.InvestorServiceProviderRelation.ServiceProvided IS 'The type of service provided to the investor (e.g. Legal Advisor, Advisor: Gener';
COMMENT ON COLUMN main.InvestorServiceProviderRelation.ServiceProviderType IS 'Primary type of service provider';
COMMENT ON COLUMN main.InvestorServiceProviderRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorServiceProviderRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investorserviceproviderrelation_investorid ON main.InvestorServiceProviderRelation (InvestorID);
CREATE INDEX idx_investorserviceproviderrelation_rowid ON main.InvestorServiceProviderRelation (RowID);

\COPY main.InvestorServiceProviderRelation FROM 'data/InvestorServiceProviderRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

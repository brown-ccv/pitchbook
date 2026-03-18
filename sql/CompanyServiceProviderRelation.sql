-- Auto-generated from data dictionary for table: CompanyServiceProviderRelation
-- Columns: 7

DROP TABLE IF EXISTS main.CompanyServiceProviderRelation CASCADE;

CREATE TABLE main.CompanyServiceProviderRelation (
    CompanyID text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    ServiceProviderID text,  -- Unique identifier for the service provider (PbID)
    ServiceProviderName text,  -- The formal name of the service provider used on the service provider''s PitchBoo
    ServiceProvided text,  -- The type of service provided to the company (e.g. Legal Advisor, Advisor: Genera
    ServiceProviderType text,  -- Primary type of service provider
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyServiceProviderRelation.CompanyID IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyServiceProviderRelation.ServiceProviderID IS 'Unique identifier for the service provider (PbID)';
COMMENT ON COLUMN main.CompanyServiceProviderRelation.ServiceProviderName IS 'The formal name of the service provider used on the service provider''s PitchBoo';
COMMENT ON COLUMN main.CompanyServiceProviderRelation.ServiceProvided IS 'The type of service provided to the company (e.g. Legal Advisor, Advisor: Genera';
COMMENT ON COLUMN main.CompanyServiceProviderRelation.ServiceProviderType IS 'Primary type of service provider';
COMMENT ON COLUMN main.CompanyServiceProviderRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyServiceProviderRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyserviceproviderrelation_companyid ON main.CompanyServiceProviderRelation (CompanyID);
CREATE INDEX idx_companyserviceproviderrelation_rowid ON main.CompanyServiceProviderRelation (RowID);

\COPY main.CompanyServiceProviderRelation FROM 'data/CompanyServiceProviderRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

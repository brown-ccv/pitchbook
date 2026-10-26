-- Auto-generated from data dictionary for table: DealServiceProviderRelation
-- Columns: 15

DROP TABLE IF EXISTS main.DealServiceProviderRelation CASCADE;

CREATE TABLE main.DealServiceProviderRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "ServiceProviderID" text,  -- Unique identifier for the service provider (PbID)
    "ServiceProviderName" text,  -- Name of the service provider
    "ServiceProvided" text,  -- The type of service provided on the deal. (e.g. Legal Advisor, Advisor: General 
    "ServiceProviderType" text,  -- Primary type of service provider
    "ServiceToID" text,  -- Unique identifier (PbID) of the entity that the service was provided for
    "ServiceToName" text,  -- The name of the entity the service was provided for
    "BuySide_SellSide" text,  -- ''Buy-side'' if Buy-side service provider on the deal or ''Sell-side'' if Sell-s
    "DealDate" date,  -- Date of the deal
    "DealNo" integer,  -- Numerical value assigned to every deal in a company''s deal history. Each deal i
    "Comments" text,  -- Any comments entered by PitchBook researcher pertaining to the deal
    "LeadPartnerID" text,  -- Unique identifier (PbID) of the lead partner
    "LeadPartnerName" text,  -- Full name of the lead partner
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.DealServiceProviderRelation FROM 'data/DealServiceProviderRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_dealserviceproviderrelation_dealid ON main.DealServiceProviderRelation ("DealID");
CREATE INDEX idx_dealserviceproviderrelation_rowid ON main.DealServiceProviderRelation ("RowID");

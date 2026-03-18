-- Auto-generated from data dictionary for table: PersonAffiliatedDealRelation
-- Columns: 9

DROP TABLE IF EXISTS main.PersonAffiliatedDealRelation CASCADE;

CREATE TABLE main.PersonAffiliatedDealRelation (
    "PersonID" text,  -- Unique identifier for the person (PbID). Relates to the unique PersonID in Perso
    "DealID" text,  -- Unique identifier for deal (PbID) where the person served as lead partner
    "RepresentingID" text,  -- Unique identifier of the firm the person is employed at
    "RepresentingEntityName" text,  -- Name of the firm the person is employed at
    "CompanyName" text,  -- Name of the company that received the financing round
    "CompanyID" text,  -- Unique identifier for company (PbID) who received the financing round where the 
    "DealDate" date,  -- Date of the financial transaction
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.PersonAffiliatedDealRelation."PersonID" IS 'Unique identifier for the person (PbID). Relates to the unique PersonID in Perso';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."DealID" IS 'Unique identifier for deal (PbID) where the person served as lead partner';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."RepresentingID" IS 'Unique identifier of the firm the person is employed at';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."RepresentingEntityName" IS 'Name of the firm the person is employed at';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."CompanyName" IS 'Name of the company that received the financing round';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."CompanyID" IS 'Unique identifier for company (PbID) who received the financing round where the ';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."DealDate" IS 'Date of the financial transaction';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.PersonAffiliatedDealRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_personaffiliateddealrelation_personid ON main.PersonAffiliatedDealRelation ("PersonID");
CREATE INDEX idx_personaffiliateddealrelation_rowid ON main.PersonAffiliatedDealRelation ("RowID");

\COPY main.PersonAffiliatedDealRelation FROM 'data/PersonAffiliatedDealRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

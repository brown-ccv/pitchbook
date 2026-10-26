-- Auto-generated from data dictionary for table: CompanyInvLeadPartnerRelation
-- Columns: 10

DROP TABLE IF EXISTS main.CompanyInvLeadPartnerRelation CASCADE;

CREATE TABLE main.CompanyInvLeadPartnerRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "RepresentingID" text,  -- Unique identifier (PbID) for the representing entity of the lead partner (e.g.  
    "Representing" text,  -- The full name for the representing entity of the investor (e.g. Andreeseen Horow
    "LeadPartnerID" text,  -- Unique identifier for lead partner (PbID)
    "LeadPartnerName" text,  -- The person''s full name
    "Title" text,  -- The full title of the person (e.g. Chief Executive Officer & Chairman)
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "DealDate" date,  -- Date of the investment
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyInvLeadPartnerRelation FROM 'data/CompanyInvLeadPartnerRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyinvleadpartnerrelation_companyid ON main.CompanyInvLeadPartnerRelation ("CompanyID");
CREATE INDEX idx_companyinvleadpartnerrelation_rowid ON main.CompanyInvLeadPartnerRelation ("RowID");

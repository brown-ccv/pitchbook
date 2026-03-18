-- Auto-generated from data dictionary for table: InvestorAffiliateRelation
-- Columns: 12

DROP TABLE IF EXISTS main.InvestorAffiliateRelation CASCADE;

CREATE TABLE main.InvestorAffiliateRelation (
    InvestorID text,  -- Unique identifier for the entity (PbID). Relates to unique CompanyID in Company.
    AffiliateID text,  -- Unique identifier for the affiliate (PbID)
    AffiliateName text,  -- The name of the affiliate
    Industry text,  -- The industry code of the affiliate
    Location text,  -- The city, state of the affiliate
    YearFounded integer,  -- The year the affiliate was founded
    AffiliateType text,  -- The relationship of the affiliate to the company. Affiliate types are limited to
    HQCity text,  -- City where the affiliate is headquartered
    HQState_Province text,  -- State or province where the affiliate is headquartered
    HQCountry text,  -- Country where the affiliate is headquartered
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorAffiliateRelation.InvestorID IS 'Unique identifier for the entity (PbID). Relates to unique CompanyID in Company.';
COMMENT ON COLUMN main.InvestorAffiliateRelation.AffiliateID IS 'Unique identifier for the affiliate (PbID)';
COMMENT ON COLUMN main.InvestorAffiliateRelation.AffiliateName IS 'The name of the affiliate';
COMMENT ON COLUMN main.InvestorAffiliateRelation.Industry IS 'The industry code of the affiliate';
COMMENT ON COLUMN main.InvestorAffiliateRelation.Location IS 'The city, state of the affiliate';
COMMENT ON COLUMN main.InvestorAffiliateRelation.YearFounded IS 'The year the affiliate was founded';
COMMENT ON COLUMN main.InvestorAffiliateRelation.AffiliateType IS 'The relationship of the affiliate to the company. Affiliate types are limited to';
COMMENT ON COLUMN main.InvestorAffiliateRelation.HQCity IS 'City where the affiliate is headquartered';
COMMENT ON COLUMN main.InvestorAffiliateRelation.HQState_Province IS 'State or province where the affiliate is headquartered';
COMMENT ON COLUMN main.InvestorAffiliateRelation.HQCountry IS 'Country where the affiliate is headquartered';
COMMENT ON COLUMN main.InvestorAffiliateRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorAffiliateRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investoraffiliaterelation_investorid ON main.InvestorAffiliateRelation (InvestorID);
CREATE INDEX idx_investoraffiliaterelation_rowid ON main.InvestorAffiliateRelation (RowID);

\COPY main.InvestorAffiliateRelation FROM 'data/InvestorAffiliateRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

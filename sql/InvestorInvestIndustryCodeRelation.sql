-- Auto-generated from data dictionary for table: InvestorInvestIndustryCodeRelation
-- Columns: 10

DROP TABLE IF EXISTS main.InvestorInvestIndustryCodeRelation CASCADE;

CREATE TABLE main.InvestorInvestIndustryCodeRelation (
    InvestorID text,  -- Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves
    IndustrySector text,  -- Industry sector that investor''s investments are grouped by
    IndustryGroup text,  -- Industry sub-category that provides a more specific classification
    IndustryCode text,  -- Industry sector that investor''s investments are grouped by
    Deals integer,  -- Total count of deals the investor has done in that industry code
    PercentageOfDeals float8,  -- Percentage of deals by industry code
    MedianSize float8,  -- Median size of all deals the investor has done in that industry code
    LastInvestment date,  -- Date of the investor''s last investment in that industry code
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.InvestorID IS 'Unique identifier for the investor (PbID). Relates to unique InvestorID in Inves';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.IndustrySector IS 'Industry sector that investor''s investments are grouped by';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.IndustryGroup IS 'Industry sub-category that provides a more specific classification';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.IndustryCode IS 'Industry sector that investor''s investments are grouped by';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.Deals IS 'Total count of deals the investor has done in that industry code';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.PercentageOfDeals IS 'Percentage of deals by industry code';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.MedianSize IS 'Median size of all deals the investor has done in that industry code';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.LastInvestment IS 'Date of the investor''s last investment in that industry code';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorInvestIndustryCodeRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investorinvestindustrycoderelation_investorid ON main.InvestorInvestIndustryCodeRelation (InvestorID);
CREATE INDEX idx_investorinvestindustrycoderelation_rowid ON main.InvestorInvestIndustryCodeRelation (RowID);

\COPY main.InvestorInvestIndustryCodeRelation FROM 'data/InvestorInvestIndustryCodeRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

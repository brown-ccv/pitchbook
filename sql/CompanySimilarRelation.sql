-- Auto-generated from data dictionary for table: CompanySimilarRelation
-- Columns: 23

DROP TABLE IF EXISTS main.CompanySimilarRelation CASCADE;

CREATE TABLE main.CompanySimilarRelation (
    CompanyID text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    SimilarCompanyID text,  -- Unique identifier for the similar company (PbID)
    SimilarCompanyName text,  -- The name of the similar company
    SimilarityRank integer,  -- Rank of how similar the company is relative to the other similar companies
    SimilarityScore float8,  -- Percentile rank of the similarity between the company and the similar company ba
    IsCompetitor text,  -- Marked ''Yes'' or ''No'' if the similar company is also a competitor
    OwnershipStatus text,  -- Summary detailing how the company is held. It is the ownership under which the c
    CompanyFinancingStatus text,  -- Represents the type of investors that are financially backing the company (Bakin
    SimilarDescription text,  -- Text description of the company''s business
    SimilarPrimaryIndustrySector text,  -- Broad industry category that contains industry groups and codes
    SimilarPrimaryIndustryGroup text,  -- Industry sub-category that provides a more specific classification
    SimilarPrimaryIndustryCode text,  -- Primary industry the company operates in
    SimilarAllIndustries text,  -- Comma-separated list of all industries the company operates in
    SimilarVerticals text,  -- Comma-separated list of all verticals, or classifiers that may span across multi
    SimilarCompanyHQLocation text,  -- For the similar company, geographical location of a company''s headquarters. Inc
    SimilarCompanyHQAddressLine1 text,  -- For the similar company, address of the company''s headquarters
    SimilarCompanyHQAddressLine2 text,  -- For the similar company, second line of the headquarters'' address
    SimilarCompanyHQCity text,  -- For the similar company, city where the company is headquartered
    SimilarCompanyHQState_Province text,  -- For the similar company, state or province where the company is headquartered
    SimilarCompanyHQPostCode text,  -- For the similar company, post code where the company is headquartered
    SimilarCompanyHQCountry text,  -- For the similar company, country where the company is headquartered
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanySimilarRelation.CompanyID IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyID IS 'Unique identifier for the similar company (PbID)';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyName IS 'The name of the similar company';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarityRank IS 'Rank of how similar the company is relative to the other similar companies';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarityScore IS 'Percentile rank of the similarity between the company and the similar company ba';
COMMENT ON COLUMN main.CompanySimilarRelation.IsCompetitor IS 'Marked ''Yes'' or ''No'' if the similar company is also a competitor';
COMMENT ON COLUMN main.CompanySimilarRelation.OwnershipStatus IS 'Summary detailing how the company is held. It is the ownership under which the c';
COMMENT ON COLUMN main.CompanySimilarRelation.CompanyFinancingStatus IS 'Represents the type of investors that are financially backing the company (Bakin';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarDescription IS 'Text description of the company''s business';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarPrimaryIndustrySector IS 'Broad industry category that contains industry groups and codes';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarPrimaryIndustryGroup IS 'Industry sub-category that provides a more specific classification';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarPrimaryIndustryCode IS 'Primary industry the company operates in';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarAllIndustries IS 'Comma-separated list of all industries the company operates in';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarVerticals IS 'Comma-separated list of all verticals, or classifiers that may span across multi';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyHQLocation IS 'For the similar company, geographical location of a company''s headquarters. Inc';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyHQAddressLine1 IS 'For the similar company, address of the company''s headquarters';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyHQAddressLine2 IS 'For the similar company, second line of the headquarters'' address';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyHQCity IS 'For the similar company, city where the company is headquartered';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyHQState_Province IS 'For the similar company, state or province where the company is headquartered';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyHQPostCode IS 'For the similar company, post code where the company is headquartered';
COMMENT ON COLUMN main.CompanySimilarRelation.SimilarCompanyHQCountry IS 'For the similar company, country where the company is headquartered';
COMMENT ON COLUMN main.CompanySimilarRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanySimilarRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companysimilarrelation_companyid ON main.CompanySimilarRelation (CompanyID);
CREATE INDEX idx_companysimilarrelation_rowid ON main.CompanySimilarRelation (RowID);

\COPY main.CompanySimilarRelation FROM 'data/CompanySimilarRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

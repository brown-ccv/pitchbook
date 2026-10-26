-- Auto-generated from data dictionary for table: CompanySimilarRelation
-- Columns: 23

DROP TABLE IF EXISTS main.CompanySimilarRelation CASCADE;

CREATE TABLE main.CompanySimilarRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "SimilarCompanyID" text,  -- Unique identifier for the similar company (PbID)
    "SimilarCompanyName" text,  -- The name of the similar company
    "SimilarityRank" integer,  -- Rank of how similar the company is relative to the other similar companies
    "SimilarityScore" float8,  -- Percentile rank of the similarity between the company and the similar company ba
    "IsCompetitor" text,  -- Marked ''Yes'' or ''No'' if the similar company is also a competitor
    "OwnershipStatus" text,  -- Summary detailing how the company is held. It is the ownership under which the c
    "CompanyFinancingStatus" text,  -- Represents the type of investors that are financially backing the company (Bakin
    "SimilarDescription" text,  -- Text description of the company''s business
    "SimilarPrimaryIndustrySector" text,  -- Broad industry category that contains industry groups and codes
    "SimilarPrimaryIndustryGroup" text,  -- Industry sub-category that provides a more specific classification
    "SimilarPrimaryIndustryCode" text,  -- Primary industry the company operates in
    "SimilarAllIndustries" text,  -- Comma-separated list of all industries the company operates in
    "SimilarVerticals" text,  -- Comma-separated list of all verticals, or classifiers that may span across multi
    "SimilarCompanyHQLocation" text,  -- For the similar company, geographical location of a company''s headquarters. Inc
    "SimilarCompanyHQAddressLine1" text,  -- For the similar company, address of the company''s headquarters
    "SimilarCompanyHQAddressLine2" text,  -- For the similar company, second line of the headquarters'' address
    "SimilarCompanyHQCity" text,  -- For the similar company, city where the company is headquartered
    "SimilarCompanyHQState_Province" text,  -- For the similar company, state or province where the company is headquartered
    "SimilarCompanyHQPostCode" text,  -- For the similar company, post code where the company is headquartered
    "SimilarCompanyHQCountry" text,  -- For the similar company, country where the company is headquartered
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanySimilarRelation FROM 'data/CompanySimilarRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companysimilarrelation_companyid ON main.CompanySimilarRelation ("CompanyID");
CREATE INDEX idx_companysimilarrelation_rowid ON main.CompanySimilarRelation ("RowID");

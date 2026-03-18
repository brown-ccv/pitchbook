-- Auto-generated from data dictionary for table: CompanyNewsRelation
-- Columns: 8

DROP TABLE IF EXISTS main.CompanyNewsRelation CASCADE;

CREATE TABLE main.CompanyNewsRelation (
    CompanyID text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    Title text,  -- Title of the news article
    Byline text,  -- Byline of the news article
    Source text,  -- Source of the news article
    PublishDate date,  -- Publish date of the news article
    URL text,  -- URL of the news article
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyNewsRelation.CompanyID IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyNewsRelation.Title IS 'Title of the news article';
COMMENT ON COLUMN main.CompanyNewsRelation.Byline IS 'Byline of the news article';
COMMENT ON COLUMN main.CompanyNewsRelation.Source IS 'Source of the news article';
COMMENT ON COLUMN main.CompanyNewsRelation.PublishDate IS 'Publish date of the news article';
COMMENT ON COLUMN main.CompanyNewsRelation.URL IS 'URL of the news article';
COMMENT ON COLUMN main.CompanyNewsRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyNewsRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companynewsrelation_companyid ON main.CompanyNewsRelation (CompanyID);
CREATE INDEX idx_companynewsrelation_rowid ON main.CompanyNewsRelation (RowID);

\COPY main.CompanyNewsRelation FROM 'data/CompanyNewsRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

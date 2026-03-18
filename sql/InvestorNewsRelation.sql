-- Auto-generated from data dictionary for table: InvestorNewsRelation
-- Columns: 8

DROP TABLE IF EXISTS main.InvestorNewsRelation CASCADE;

CREATE TABLE main.InvestorNewsRelation (
    InvestorID text,  -- Unique identifier for the company (PbID). Relates to unique InvestorID in Invest
    Title text,  -- Title of the news article
    Byline text,  -- Byline of the news article
    Source text,  -- Source of the news article
    PublishDate date,  -- Publish date of the news article
    URL text,  -- URL of the news article
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.InvestorNewsRelation.InvestorID IS 'Unique identifier for the company (PbID). Relates to unique InvestorID in Invest';
COMMENT ON COLUMN main.InvestorNewsRelation.Title IS 'Title of the news article';
COMMENT ON COLUMN main.InvestorNewsRelation.Byline IS 'Byline of the news article';
COMMENT ON COLUMN main.InvestorNewsRelation.Source IS 'Source of the news article';
COMMENT ON COLUMN main.InvestorNewsRelation.PublishDate IS 'Publish date of the news article';
COMMENT ON COLUMN main.InvestorNewsRelation.URL IS 'URL of the news article';
COMMENT ON COLUMN main.InvestorNewsRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.InvestorNewsRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_investornewsrelation_investorid ON main.InvestorNewsRelation (InvestorID);
CREATE INDEX idx_investornewsrelation_rowid ON main.InvestorNewsRelation (RowID);

\COPY main.InvestorNewsRelation FROM 'data/InvestorNewsRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

-- Auto-generated from data dictionary for table: LPNewsRelation
-- Columns: 8

DROP TABLE IF EXISTS main.LPNewsRelation CASCADE;

CREATE TABLE main.LPNewsRelation (
    LimitedPartnerID text,  -- Primary key for the limited partner. By default the unique PitchBook ID (PbID) w
    Title text,  -- Title of the news article
    Byline text,  -- Byline of the news article
    Source text,  -- Source of the news article
    PublishDate date,  -- Publish date of the news article
    URL text,  -- URL of the news article
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.LPNewsRelation.LimitedPartnerID IS 'Primary key for the limited partner. By default the unique PitchBook ID (PbID) w';
COMMENT ON COLUMN main.LPNewsRelation.Title IS 'Title of the news article';
COMMENT ON COLUMN main.LPNewsRelation.Byline IS 'Byline of the news article';
COMMENT ON COLUMN main.LPNewsRelation.Source IS 'Source of the news article';
COMMENT ON COLUMN main.LPNewsRelation.PublishDate IS 'Publish date of the news article';
COMMENT ON COLUMN main.LPNewsRelation.URL IS 'URL of the news article';
COMMENT ON COLUMN main.LPNewsRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.LPNewsRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_lpnewsrelation_limitedpartnerid ON main.LPNewsRelation (LimitedPartnerID);
CREATE INDEX idx_lpnewsrelation_rowid ON main.LPNewsRelation (RowID);

\COPY main.LPNewsRelation FROM 'data/LPNewsRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

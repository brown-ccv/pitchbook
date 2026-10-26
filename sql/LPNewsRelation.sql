-- Auto-generated from data dictionary for table: LPNewsRelation
-- Columns: 8

DROP TABLE IF EXISTS main.LPNewsRelation CASCADE;

CREATE TABLE main.LPNewsRelation (
    "LimitedPartnerID" text,  -- Primary key for the limited partner. By default the unique PitchBook ID (PbID) w
    "Title" text,  -- Title of the news article
    "Byline" text,  -- Byline of the news article
    "Source" text,  -- Source of the news article
    "PublishDate" date,  -- Publish date of the news article
    "URL" text,  -- URL of the news article
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.LPNewsRelation FROM 'data/LPNewsRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_lpnewsrelation_limitedpartnerid ON main.LPNewsRelation ("LimitedPartnerID");
CREATE INDEX idx_lpnewsrelation_rowid ON main.LPNewsRelation ("RowID");

-- Auto-generated from data dictionary for table: PersonPositionRelation
-- Columns: 13

DROP TABLE IF EXISTS main.PersonPositionRelation CASCADE;

CREATE TABLE main.PersonPositionRelation (
    "PersonID" text,  -- Unique identifier for the person (PbID). Relates to the unique PersonID in Perso
    "EntityID" text,  -- Unique identifier for the entity (PbID) the person is employed at
    "EntityName" text,  -- Name of the entity the person is employed at
    "EntityType" text,  -- Type of entity the person is employed at. Entity types include, but are not limi
    "EntityWebsite" text,  -- Website of the entity the person is employed at
    "FullTitle" text,  -- Person''s full title
    "PositionLevel" text,  -- Position level of the person
    "IsCurrent" text,  -- Denotes if the person is currently or formerly employed at the entity
    "Location" text,  -- City, State of the person''s office location. Generally city, country for global
    "StartDate" date,  -- Date the person started the position
    "EndDate" date,  -- Date the person ended their position if applicable
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.PersonPositionRelation."PersonID" IS 'Unique identifier for the person (PbID). Relates to the unique PersonID in Perso';
COMMENT ON COLUMN main.PersonPositionRelation."EntityID" IS 'Unique identifier for the entity (PbID) the person is employed at';
COMMENT ON COLUMN main.PersonPositionRelation."EntityName" IS 'Name of the entity the person is employed at';
COMMENT ON COLUMN main.PersonPositionRelation."EntityType" IS 'Type of entity the person is employed at. Entity types include, but are not limi';
COMMENT ON COLUMN main.PersonPositionRelation."EntityWebsite" IS 'Website of the entity the person is employed at';
COMMENT ON COLUMN main.PersonPositionRelation."FullTitle" IS 'Person''s full title';
COMMENT ON COLUMN main.PersonPositionRelation."PositionLevel" IS 'Position level of the person';
COMMENT ON COLUMN main.PersonPositionRelation."IsCurrent" IS 'Denotes if the person is currently or formerly employed at the entity';
COMMENT ON COLUMN main.PersonPositionRelation."Location" IS 'City, State of the person''s office location. Generally city, country for global';
COMMENT ON COLUMN main.PersonPositionRelation."StartDate" IS 'Date the person started the position';
COMMENT ON COLUMN main.PersonPositionRelation."EndDate" IS 'Date the person ended their position if applicable';
COMMENT ON COLUMN main.PersonPositionRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.PersonPositionRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_personpositionrelation_personid ON main.PersonPositionRelation ("PersonID");
CREATE INDEX idx_personpositionrelation_rowid ON main.PersonPositionRelation ("RowID");

\COPY main.PersonPositionRelation FROM 'data/PersonPositionRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

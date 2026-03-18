-- Auto-generated from data dictionary for table: PersonAdvisoryRelation
-- Columns: 11

DROP TABLE IF EXISTS main.PersonAdvisoryRelation CASCADE;

CREATE TABLE main.PersonAdvisoryRelation (
    "PersonID" text,  -- Unique identifier for the person (PbID). Relates to the unique PersonID in Perso
    "EntityID" text,  -- Unique identifier for the entity where the advisory work was performed (PbID)
    "EntityName" text,  -- Name of the entity where the advisory work was performed
    "IndustryCode" text,  -- Primary industry code of the entity where the person performed the advisory work
    "AdvisoryTitle" text,  -- Title in advisory capacity
    "Location" text,  -- City, State of the company''s headquarters. Generally city, country for global l
    "IsCurrent" text,  -- Tagged ''Yes'' if the person is a current advisor or ''No'' if the person is a f
    "StartDate" date,  -- Date the person started their position
    "EndDate" date,  -- Date the person left their position if applicable
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.PersonAdvisoryRelation."PersonID" IS 'Unique identifier for the person (PbID). Relates to the unique PersonID in Perso';
COMMENT ON COLUMN main.PersonAdvisoryRelation."EntityID" IS 'Unique identifier for the entity where the advisory work was performed (PbID)';
COMMENT ON COLUMN main.PersonAdvisoryRelation."EntityName" IS 'Name of the entity where the advisory work was performed';
COMMENT ON COLUMN main.PersonAdvisoryRelation."IndustryCode" IS 'Primary industry code of the entity where the person performed the advisory work';
COMMENT ON COLUMN main.PersonAdvisoryRelation."AdvisoryTitle" IS 'Title in advisory capacity';
COMMENT ON COLUMN main.PersonAdvisoryRelation."Location" IS 'City, State of the company''s headquarters. Generally city, country for global l';
COMMENT ON COLUMN main.PersonAdvisoryRelation."IsCurrent" IS 'Tagged ''Yes'' if the person is a current advisor or ''No'' if the person is a f';
COMMENT ON COLUMN main.PersonAdvisoryRelation."StartDate" IS 'Date the person started their position';
COMMENT ON COLUMN main.PersonAdvisoryRelation."EndDate" IS 'Date the person left their position if applicable';
COMMENT ON COLUMN main.PersonAdvisoryRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.PersonAdvisoryRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_personadvisoryrelation_personid ON main.PersonAdvisoryRelation ("PersonID");
CREATE INDEX idx_personadvisoryrelation_rowid ON main.PersonAdvisoryRelation ("RowID");

\COPY main.PersonAdvisoryRelation FROM 'data/PersonAdvisoryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

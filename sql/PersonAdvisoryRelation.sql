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

\COPY main.PersonAdvisoryRelation FROM 'data/PersonAdvisoryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_personadvisoryrelation_personid ON main.PersonAdvisoryRelation ("PersonID");
CREATE INDEX idx_personadvisoryrelation_rowid ON main.PersonAdvisoryRelation ("RowID");

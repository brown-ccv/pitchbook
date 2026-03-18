-- Auto-generated from data dictionary for table: PersonEducationRelation
-- Columns: 7

DROP TABLE IF EXISTS main.PersonEducationRelation CASCADE;

CREATE TABLE main.PersonEducationRelation (
    "PersonID" text,  -- Unique identifier for the person (PbID). Relates to the unique PersonID in Perso
    "Degree" text,  -- Type of degree attained
    "Major_Concentration" text,  -- Major or concentration attained
    "Institute" text,  -- Name of the institution the person attended
    "GraduatingYear" integer,  -- Year of graduation
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.PersonEducationRelation."PersonID" IS 'Unique identifier for the person (PbID). Relates to the unique PersonID in Perso';
COMMENT ON COLUMN main.PersonEducationRelation."Degree" IS 'Type of degree attained';
COMMENT ON COLUMN main.PersonEducationRelation."Major_Concentration" IS 'Major or concentration attained';
COMMENT ON COLUMN main.PersonEducationRelation."Institute" IS 'Name of the institution the person attended';
COMMENT ON COLUMN main.PersonEducationRelation."GraduatingYear" IS 'Year of graduation';
COMMENT ON COLUMN main.PersonEducationRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.PersonEducationRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_personeducationrelation_personid ON main.PersonEducationRelation ("PersonID");
CREATE INDEX idx_personeducationrelation_rowid ON main.PersonEducationRelation ("RowID");

\COPY main.PersonEducationRelation FROM 'data/PersonEducationRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

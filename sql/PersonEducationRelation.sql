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

\COPY main.PersonEducationRelation FROM 'data/PersonEducationRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_personeducationrelation_personid ON main.PersonEducationRelation ("PersonID");
CREATE INDEX idx_personeducationrelation_rowid ON main.PersonEducationRelation ("RowID");

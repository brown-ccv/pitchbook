-- Auto-generated from data dictionary for table: CompanyClinicalTrialsRelation
-- Columns: 25

DROP TABLE IF EXISTS main.CompanyClinicalTrialsRelation CASCADE;

CREATE TABLE main.CompanyClinicalTrialsRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "NCTID" text,  -- ClinicalTrials.gov Identifier
    "TrialName" text,  -- The name of the trial
    "Phase" text,  -- The clinical trial stage studies a drug or biological product based on definitio
    "Status" text,  -- Indicates the current recruitment status or the expanded access status
    "LastKnownStatus" text,  -- Indicates the last recruitment status or the expanded access status
    "DiseaseOrCondition" text,  -- The disease, disorder, syndrome, illness, or injury being studied. On ClinicalTr
    "Drug_Intervention" text,  -- A process or action that is the focus of a clinical study. Interventions include
    "UpdatedDate" date,  -- The date field that reflects when the trial information was last updated on the 
    "StartDate" date,  -- The date the first participant is enrolled in a clinical study. The "estimated" 
    "Sponsor" text,  -- The organization or person who initiates the study and has authority and control
    "Collaborators" text,  -- An organization other than the sponsor that supports the clinical study. This su
    "StudyType" text,  -- Describes the nature of a clinical study. Study types include interventional stu
    "StartDateType" text,  -- Describes the Start Date as either ''Actual'' or ''Anticipated''
    "Purpose" text,  -- The main reason for the clinical trial. The primary purposes are treatment, prev
    "PrimaryCompletionDate" date,  -- The date on which the last participant in a clinical study was examined or recei
    "PrimaryCompletionDateType" text,  -- This is related to the ''Primary Completion Date'' value that specifies the date
    "Locations" text,  -- Countries in which research facilities for a study are located
    "Enrollment" integer,  -- The number of participants in a clinical study. The "estimated" enrollment is th
    "EnrollmentType" text,  -- This is related to the ''Enrollment'' value that identifies how many participant
    "Arms" text,  -- A group or subgroup of participants in a clinical trial that receives a specific
    "ResultPostDate" date,  -- The date the results were posted for the specific trial
    "EntityRole" text,  -- Choose to view the clinical trial sponsor, collaborator or all of the entity rol
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyClinicalTrialsRelation FROM 'data/CompanyClinicalTrialsRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyclinicaltrialsrelation_companyid ON main.CompanyClinicalTrialsRelation ("CompanyID");
CREATE INDEX idx_companyclinicaltrialsrelation_rowid ON main.CompanyClinicalTrialsRelation ("RowID");

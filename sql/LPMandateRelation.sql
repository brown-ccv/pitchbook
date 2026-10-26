-- Auto-generated from data dictionary for table: LPMandateRelation
-- Columns: 12

DROP TABLE IF EXISTS main.LPMandateRelation CASCADE;

CREATE TABLE main.LPMandateRelation (
    "LimitedPartnerID" text,  -- Unique identifier for the limited partner (PbID). Relates to the unique LimitedP
    "MandateStatus" text,  -- Status of the mandate
    "MandateAmount" float8,  -- Amount of the mandate
    "AnnouncedDate" date,  -- Date mandate was announced
    "MandateStartDate" date,  -- Date the mandate started
    "MandateEndDate" date,  -- Date the mandate will end
    "TargetedFundTypes" text,  -- Type of funds targeted by the mandate
    "TargetedRegions" text,  -- Regions targeted by the mandate
    "FundManagerPreferences" text,  -- Preferences held by the fund manager
    "MandateDescription" text,  -- Description of the mandate
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.LPMandateRelation FROM 'data/LPMandateRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_lpmandaterelation_limitedpartnerid ON main.LPMandateRelation ("LimitedPartnerID");
CREATE INDEX idx_lpmandaterelation_rowid ON main.LPMandateRelation ("RowID");

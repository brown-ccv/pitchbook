-- Auto-generated from data dictionary for table: CompanyEmployeeHistoryRelation
-- Columns: 5

DROP TABLE IF EXISTS main.CompanyEmployeeHistoryRelation CASCADE;

CREATE TABLE main.CompanyEmployeeHistoryRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "EmployeeCount" integer,  -- Count of employees
    "Date" date,  -- Date of the employee count
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyEmployeeHistoryRelation FROM 'data/CompanyEmployeeHistoryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyemployeehistoryrelation_companyid ON main.CompanyEmployeeHistoryRelation ("CompanyID");
CREATE INDEX idx_companyemployeehistoryrelation_rowid ON main.CompanyEmployeeHistoryRelation ("RowID");

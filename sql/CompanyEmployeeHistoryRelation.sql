-- Auto-generated from data dictionary for table: CompanyEmployeeHistoryRelation
-- Columns: 5

DROP TABLE IF EXISTS main.CompanyEmployeeHistoryRelation CASCADE;

CREATE TABLE main.CompanyEmployeeHistoryRelation (
    CompanyID text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    EmployeeCount integer,  -- Count of employees
    Date date,  -- Date of the employee count
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyEmployeeHistoryRelation.CompanyID IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyEmployeeHistoryRelation.EmployeeCount IS 'Count of employees';
COMMENT ON COLUMN main.CompanyEmployeeHistoryRelation.Date IS 'Date of the employee count';
COMMENT ON COLUMN main.CompanyEmployeeHistoryRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyEmployeeHistoryRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyemployeehistoryrelation_companyid ON main.CompanyEmployeeHistoryRelation (CompanyID);
CREATE INDEX idx_companyemployeehistoryrelation_rowid ON main.CompanyEmployeeHistoryRelation (RowID);

\COPY main.CompanyEmployeeHistoryRelation FROM 'data/CompanyEmployeeHistoryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

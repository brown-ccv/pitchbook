-- Auto-generated from data dictionary for table: CompanyFinancialRelation
-- Columns: 12

DROP TABLE IF EXISTS main.CompanyFinancialRelation CASCADE;

CREATE TABLE main.CompanyFinancialRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "FiscalPeriod" text,  -- Fiscal period the financial figures originated. TTM by default. For private comp
    "Revenue" float8,  -- Revenue figure derived from the company''s income statement. Figure displayed in
    "GrossProfit" float8,  -- Gross profit figure derived from the company''s income statement. Figure display
    "NetIncome" float8,  -- The net profit of the company (Revenue - Expenses). Delivered in millions and US
    "EnterpriseValue" float8,  -- Enterprise value figure derived from the company''s income statement. Figure dis
    "EBITDA" float8,  -- EBITDA figure derived from the company''s income statement. Figure displayed in 
    "EBIT" float8,  -- Earnings before interest and taxes. Delivered in millions and USD
    "NetDebt" float8,  -- Overall debt situation by netting the value of debts with cash and other similar
    "PeriodEndDate" date,  -- The exact date that is given in the financial statements for each period''s end
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.CompanyFinancialRelation FROM 'data/CompanyFinancialRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_companyfinancialrelation_companyid ON main.CompanyFinancialRelation ("CompanyID");
CREATE INDEX idx_companyfinancialrelation_rowid ON main.CompanyFinancialRelation ("RowID");

-- Auto-generated from data dictionary for table: CompanyFinancialRelation
-- Columns: 12

DROP TABLE IF EXISTS main.CompanyFinancialRelation CASCADE;

CREATE TABLE main.CompanyFinancialRelation (
    CompanyID text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    FiscalPeriod text,  -- Fiscal period the financial figures originated. TTM by default. For private comp
    Revenue float8,  -- Revenue figure derived from the company''s income statement. Figure displayed in
    GrossProfit float8,  -- Gross profit figure derived from the company''s income statement. Figure display
    NetIncome float8,  -- The net profit of the company (Revenue - Expenses). Delivered in millions and US
    EnterpriseValue float8,  -- Enterprise value figure derived from the company''s income statement. Figure dis
    EBITDA float8,  -- EBITDA figure derived from the company''s income statement. Figure displayed in 
    EBIT float8,  -- Earnings before interest and taxes. Delivered in millions and USD
    NetDebt float8,  -- Overall debt situation by netting the value of debts with cash and other similar
    PeriodEndDate date,  -- The exact date that is given in the financial statements for each period''s end
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyFinancialRelation.CompanyID IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyFinancialRelation.FiscalPeriod IS 'Fiscal period the financial figures originated. TTM by default. For private comp';
COMMENT ON COLUMN main.CompanyFinancialRelation.Revenue IS 'Revenue figure derived from the company''s income statement. Figure displayed in';
COMMENT ON COLUMN main.CompanyFinancialRelation.GrossProfit IS 'Gross profit figure derived from the company''s income statement. Figure display';
COMMENT ON COLUMN main.CompanyFinancialRelation.NetIncome IS 'The net profit of the company (Revenue - Expenses). Delivered in millions and US';
COMMENT ON COLUMN main.CompanyFinancialRelation.EnterpriseValue IS 'Enterprise value figure derived from the company''s income statement. Figure dis';
COMMENT ON COLUMN main.CompanyFinancialRelation.EBITDA IS 'EBITDA figure derived from the company''s income statement. Figure displayed in ';
COMMENT ON COLUMN main.CompanyFinancialRelation.EBIT IS 'Earnings before interest and taxes. Delivered in millions and USD';
COMMENT ON COLUMN main.CompanyFinancialRelation.NetDebt IS 'Overall debt situation by netting the value of debts with cash and other similar';
COMMENT ON COLUMN main.CompanyFinancialRelation.PeriodEndDate IS 'The exact date that is given in the financial statements for each period''s end';
COMMENT ON COLUMN main.CompanyFinancialRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyFinancialRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companyfinancialrelation_companyid ON main.CompanyFinancialRelation (CompanyID);
CREATE INDEX idx_companyfinancialrelation_rowid ON main.CompanyFinancialRelation (RowID);

\COPY main.CompanyFinancialRelation FROM 'data/CompanyFinancialRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

-- Auto-generated from data dictionary for table: DealDebtLenderRelation
-- Columns: 49

DROP TABLE IF EXISTS main.DealDebtLenderRelation CASCADE;

CREATE TABLE main.DealDebtLenderRelation (
    DealID text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    DebtRound integer,  -- Debt round number for the deal. A given deal can have multiple rounds of a debt
    FacilityID text,  -- Unique identifier for each debt round within the deal id (PbID). This is the sam
    LCDSuperTransactionID integer,  -- The unique identifier assigned by LCD at the super transaction, or round, level.
    LCDTransactionID integer,  -- LCD Transaction ID
    LenderID text,  -- Unique identifier for the lender (PbID)
    LenderName text,  -- Full name of the lender
    LenderTitle text,  -- Title of lender
    LenderType text,  -- Type of lender
    Fund1 text,  -- Fund name if there is a fund tagged to the debt as Fund 1
    Fund1Amount float8,  -- Amount for Fund 1
    Fund2 text,  -- Fund name if there is a fund tagged to the debt as Fund 2
    Fund2Amount float8,  -- Amount for Fund 2
    LeadPartner text,  -- Full name of lead partner
    DebtAmount float8,  -- The total amount of a particular debt type provided in a debt round by all Lende
    NativeCurrencyOfDebtAmount text,  -- Local currency of the debt
    NativeAmountOfDebtAmount float8,  -- The size of the debt in the native amount
    PIK float8,  -- PIK (Payment in Kind) is an alternative method of payment on debt where the borr
    Region text,  -- Region value for debt
    LenderAmount float8,  -- The amount of capital given by the specific lender
    NativeCurrencyOfLenderAmount text,  -- Local currency of the lender amount
    NativeAmountOfLenderAmount float8,  -- The size of the lender amount in the native amount
    DebtProvided text,  -- Type of debt provided
    MaturityDate date,  -- Due date for the debt facility. Debt must either be refinanced or paid off by th
    DebtStatus text,  -- Status of the debt
    Spread_InterestRate float8,  -- The static portion of the interest rate upon which the debt is issued. (Note: If
    Seniority text,  -- Priority in which the debt is repaid. Possible values include either ''Senior'' 
    Security text,  -- Indicates whether the debt is backed by collateral, and may indicate the specifi
    Rate text,  -- Debt characteristic
    AdditionalDebtCharacteristics text,  -- Debt characteristic
    SpreadReference text,  -- The dynamic portion of the interest rate upon which the debt is issued. Rates su
    IssueDate date,  -- Date of debt issuance
    Options text,  -- Type of security associated with the debt (convertible vs warrants)
    DebtInstruments text,  -- Facility Name
    Spread_Coupon text,  -- The interest rate premium paid by the borrower over the specified base (benchmar
    Floor float8,  -- Base rate floor puts a floor (minimum rate) under the base rate for loans, typic
    OID_Price float8,  -- The debt''s issue price
    AssetClass text,  -- Debt asset classes group debt lending into different categories. Debts issued wi
    PrimaryYTM float8,  -- The yield to maturity at closing of the loan
    LeadArranger text,  -- Lead Arranger Name
    TotalLenders integer,  -- Number of lenders tagged to the debt
    AsOfDate date,  -- Date on which the Cost and Fair Value has been recorded, ie, the period of the r
    RefResetFrequency text,  -- The frequency of which the Reference Rate changes
    Cost float8,  -- Net of payments and accumulated unearned interest. (This is typically only given
    Tenor float8,  -- The length of the debt from close to maturity (in years)
    PercentOfDebt float8,  -- The percentage of the deal that was financed through debt, excluding revolving c
    TotalNewDebt float8,  -- The net increase in the amount of debt provided to the company by lenders, exclu
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.DealDebtLenderRelation.DealID IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.DealDebtLenderRelation.DebtRound IS 'Debt round number for the deal. A given deal can have multiple rounds of a debt';
COMMENT ON COLUMN main.DealDebtLenderRelation.FacilityID IS 'Unique identifier for each debt round within the deal id (PbID). This is the sam';
COMMENT ON COLUMN main.DealDebtLenderRelation.LCDSuperTransactionID IS 'The unique identifier assigned by LCD at the super transaction, or round, level.';
COMMENT ON COLUMN main.DealDebtLenderRelation.LCDTransactionID IS 'LCD Transaction ID';
COMMENT ON COLUMN main.DealDebtLenderRelation.LenderID IS 'Unique identifier for the lender (PbID)';
COMMENT ON COLUMN main.DealDebtLenderRelation.LenderName IS 'Full name of the lender';
COMMENT ON COLUMN main.DealDebtLenderRelation.LenderTitle IS 'Title of lender';
COMMENT ON COLUMN main.DealDebtLenderRelation.LenderType IS 'Type of lender';
COMMENT ON COLUMN main.DealDebtLenderRelation.Fund1 IS 'Fund name if there is a fund tagged to the debt as Fund 1';
COMMENT ON COLUMN main.DealDebtLenderRelation.Fund1Amount IS 'Amount for Fund 1';
COMMENT ON COLUMN main.DealDebtLenderRelation.Fund2 IS 'Fund name if there is a fund tagged to the debt as Fund 2';
COMMENT ON COLUMN main.DealDebtLenderRelation.Fund2Amount IS 'Amount for Fund 2';
COMMENT ON COLUMN main.DealDebtLenderRelation.LeadPartner IS 'Full name of lead partner';
COMMENT ON COLUMN main.DealDebtLenderRelation.DebtAmount IS 'The total amount of a particular debt type provided in a debt round by all Lende';
COMMENT ON COLUMN main.DealDebtLenderRelation.NativeCurrencyOfDebtAmount IS 'Local currency of the debt';
COMMENT ON COLUMN main.DealDebtLenderRelation.NativeAmountOfDebtAmount IS 'The size of the debt in the native amount';
COMMENT ON COLUMN main.DealDebtLenderRelation.PIK IS 'PIK (Payment in Kind) is an alternative method of payment on debt where the borr';
COMMENT ON COLUMN main.DealDebtLenderRelation.Region IS 'Region value for debt';
COMMENT ON COLUMN main.DealDebtLenderRelation.LenderAmount IS 'The amount of capital given by the specific lender';
COMMENT ON COLUMN main.DealDebtLenderRelation.NativeCurrencyOfLenderAmount IS 'Local currency of the lender amount';
COMMENT ON COLUMN main.DealDebtLenderRelation.NativeAmountOfLenderAmount IS 'The size of the lender amount in the native amount';
COMMENT ON COLUMN main.DealDebtLenderRelation.DebtProvided IS 'Type of debt provided';
COMMENT ON COLUMN main.DealDebtLenderRelation.MaturityDate IS 'Due date for the debt facility. Debt must either be refinanced or paid off by th';
COMMENT ON COLUMN main.DealDebtLenderRelation.DebtStatus IS 'Status of the debt';
COMMENT ON COLUMN main.DealDebtLenderRelation.Spread_InterestRate IS 'The static portion of the interest rate upon which the debt is issued. (Note: If';
COMMENT ON COLUMN main.DealDebtLenderRelation.Seniority IS 'Priority in which the debt is repaid. Possible values include either ''Senior'' ';
COMMENT ON COLUMN main.DealDebtLenderRelation.Security IS 'Indicates whether the debt is backed by collateral, and may indicate the specifi';
COMMENT ON COLUMN main.DealDebtLenderRelation.Rate IS 'Debt characteristic';
COMMENT ON COLUMN main.DealDebtLenderRelation.AdditionalDebtCharacteristics IS 'Debt characteristic';
COMMENT ON COLUMN main.DealDebtLenderRelation.SpreadReference IS 'The dynamic portion of the interest rate upon which the debt is issued. Rates su';
COMMENT ON COLUMN main.DealDebtLenderRelation.IssueDate IS 'Date of debt issuance';
COMMENT ON COLUMN main.DealDebtLenderRelation.Options IS 'Type of security associated with the debt (convertible vs warrants)';
COMMENT ON COLUMN main.DealDebtLenderRelation.DebtInstruments IS 'Facility Name';
COMMENT ON COLUMN main.DealDebtLenderRelation.Spread_Coupon IS 'The interest rate premium paid by the borrower over the specified base (benchmar';
COMMENT ON COLUMN main.DealDebtLenderRelation.Floor IS 'Base rate floor puts a floor (minimum rate) under the base rate for loans, typic';
COMMENT ON COLUMN main.DealDebtLenderRelation.OID_Price IS 'The debt''s issue price';
COMMENT ON COLUMN main.DealDebtLenderRelation.AssetClass IS 'Debt asset classes group debt lending into different categories. Debts issued wi';
COMMENT ON COLUMN main.DealDebtLenderRelation.PrimaryYTM IS 'The yield to maturity at closing of the loan';
COMMENT ON COLUMN main.DealDebtLenderRelation.LeadArranger IS 'Lead Arranger Name';
COMMENT ON COLUMN main.DealDebtLenderRelation.TotalLenders IS 'Number of lenders tagged to the debt';
COMMENT ON COLUMN main.DealDebtLenderRelation.AsOfDate IS 'Date on which the Cost and Fair Value has been recorded, ie, the period of the r';
COMMENT ON COLUMN main.DealDebtLenderRelation.RefResetFrequency IS 'The frequency of which the Reference Rate changes';
COMMENT ON COLUMN main.DealDebtLenderRelation.Cost IS 'Net of payments and accumulated unearned interest. (This is typically only given';
COMMENT ON COLUMN main.DealDebtLenderRelation.Tenor IS 'The length of the debt from close to maturity (in years)';
COMMENT ON COLUMN main.DealDebtLenderRelation.PercentOfDebt IS 'The percentage of the deal that was financed through debt, excluding revolving c';
COMMENT ON COLUMN main.DealDebtLenderRelation.TotalNewDebt IS 'The net increase in the amount of debt provided to the company by lenders, exclu';
COMMENT ON COLUMN main.DealDebtLenderRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.DealDebtLenderRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_dealdebtlenderrelation_dealid ON main.DealDebtLenderRelation (DealID);
CREATE INDEX idx_dealdebtlenderrelation_rowid ON main.DealDebtLenderRelation (RowID);

\COPY main.DealDebtLenderRelation FROM 'data/DealDebtLenderRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

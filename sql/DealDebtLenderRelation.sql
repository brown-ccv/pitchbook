-- Auto-generated from data dictionary for table: DealDebtLenderRelation
-- Columns: 49

DROP TABLE IF EXISTS main.DealDebtLenderRelation CASCADE;

CREATE TABLE main.DealDebtLenderRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "DebtRound" integer,  -- Debt round number for the deal. A given deal can have multiple rounds of a debt
    "FacilityID" text,  -- Unique identifier for each debt round within the deal id (PbID). This is the sam
    "LCDSuperTransactionID" integer,  -- The unique identifier assigned by LCD at the super transaction, or round, level.
    "LCDTransactionID" integer,  -- LCD Transaction ID
    "LenderID" text,  -- Unique identifier for the lender (PbID)
    "LenderName" text,  -- Full name of the lender
    "LenderTitle" text,  -- Title of lender
    "LenderType" text,  -- Type of lender
    "Fund1" text,  -- Fund name if there is a fund tagged to the debt as Fund 1
    "Fund1Amount" float8,  -- Amount for Fund 1
    "Fund2" text,  -- Fund name if there is a fund tagged to the debt as Fund 2
    "Fund2Amount" float8,  -- Amount for Fund 2
    "LeadPartner" text,  -- Full name of lead partner
    "DebtAmount" float8,  -- The total amount of a particular debt type provided in a debt round by all Lende
    "NativeCurrencyOfDebtAmount" text,  -- Local currency of the debt
    "NativeAmountOfDebtAmount" float8,  -- The size of the debt in the native amount
    "PIK" float8,  -- PIK (Payment in Kind) is an alternative method of payment on debt where the borr
    "Region" text,  -- Region value for debt
    "LenderAmount" float8,  -- The amount of capital given by the specific lender
    "NativeCurrencyOfLenderAmount" text,  -- Local currency of the lender amount
    "NativeAmountOfLenderAmount" float8,  -- The size of the lender amount in the native amount
    "DebtProvided" text,  -- Type of debt provided
    "MaturityDate" date,  -- Due date for the debt facility. Debt must either be refinanced or paid off by th
    "DebtStatus" text,  -- Status of the debt
    "Spread_InterestRate" float8,  -- The static portion of the interest rate upon which the debt is issued. (Note: If
    "Seniority" text,  -- Priority in which the debt is repaid. Possible values include either ''Senior'' 
    "Security" text,  -- Indicates whether the debt is backed by collateral, and may indicate the specifi
    "Rate" text,  -- Debt characteristic
    "AdditionalDebtCharacteristics" text,  -- Debt characteristic
    "SpreadReference" text,  -- The dynamic portion of the interest rate upon which the debt is issued. Rates su
    "IssueDate" date,  -- Date of debt issuance
    "Options" text,  -- Type of security associated with the debt (convertible vs warrants)
    "DebtInstruments" text,  -- Facility Name
    "Spread_Coupon" text,  -- The interest rate premium paid by the borrower over the specified base (benchmar
    "Floor" float8,  -- Base rate floor puts a floor (minimum rate) under the base rate for loans, typic
    "OID_Price" float8,  -- The debt''s issue price
    "AssetClass" text,  -- Debt asset classes group debt lending into different categories. Debts issued wi
    "PrimaryYTM" float8,  -- The yield to maturity at closing of the loan
    "LeadArranger" text,  -- Lead Arranger Name
    "TotalLenders" integer,  -- Number of lenders tagged to the debt
    "AsOfDate" date,  -- Date on which the Cost and Fair Value has been recorded, ie, the period of the r
    "RefResetFrequency" text,  -- The frequency of which the Reference Rate changes
    "Cost" float8,  -- Net of payments and accumulated unearned interest. (This is typically only given
    "Tenor" float8,  -- The length of the debt from close to maturity (in years)
    "PercentOfDebt" float8,  -- The percentage of the deal that was financed through debt, excluding revolving c
    "TotalNewDebt" float8,  -- The net increase in the amount of debt provided to the company by lenders, exclu
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.DealDebtLenderRelation FROM 'data/DealDebtLenderRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_dealdebtlenderrelation_dealid ON main.DealDebtLenderRelation ("DealID");
CREATE INDEX idx_dealdebtlenderrelation_rowid ON main.DealDebtLenderRelation ("RowID");

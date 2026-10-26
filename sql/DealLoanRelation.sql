-- Auto-generated from data dictionary for table: DealLoanRelation
-- Columns: 62

DROP TABLE IF EXISTS main.DealLoanRelation CASCADE;

CREATE TABLE main.DealLoanRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "FacilityID" text,  -- Unique identifier for each debt round within the deal id (PbID). This is the sam
    "LCDSuperTransactionID" integer,  -- The unique identifier assigned by LCD at the super transaction, or round, level.
    "LCDTransactionID" integer,  -- LCD Transaction ID
    "DebtName" text,  -- Loan Name
    "DebtType" text,  -- Facility Type
    "DebtAmount" float8,  -- Total size of a loan or debt obligation at issuance
    "NewMoney" float8,  -- Amount of new money available to the issuer
    "CloseDate" date,  -- When the loan transaction is completed
    "Term" float8,  -- The length of the loan from close to maturity (in years)
    "MaturityDate" date,  -- Date on which the final loan payment becomes due and the principal amount must b
    "DebtStatus" text,  -- Status of the debt
    "Seniority" text,  -- Refers to the order of repayment in the event of a sale or bankruptcy of the iss
    "Security" text,  -- Indicates whether or not the debt is backed by collateral, and may indicate the 
    "Spread" text,  -- The interest rate premium paid by the borrower over the specified base (benchmar
    "SpreadAdjustment" text,  -- Credit spread adjustment (CSA) used for 1/3/6-month term SOFR. This is presented
    "AlternativeSpread" text,  -- The interest rate premium paid by the borrower over the specified benchmark rate
    "Floor" float8,  -- Base rate floor puts a floor (minimum rate) under the base rate for loans, typic
    "Ceiling" float8,  -- The maximum interest rate that the borrower will pay to the lender, triggered in
    "ResetFrequency" text,  -- The cadence on which variable interest rate loans are readjusted
    "RateType" text,  -- Credit spread adjustment (CSA) used for 1/3/6-month term SOFR
    "PriceTight" float8,  -- Applies if a loan is launched to market with a range of spreads referred to as "
    "PriceWide" float8,  -- Applies if a loan is launched to market with a range of spreads referred to as "
    "FlexAmount" float8,  -- The change in the loan amount during syndication process. A downsize is indicate
    "FlexAmountDate" date,  -- The date on which the loan amount changed during syndication process
    "FlexSpread" float8,  -- The change in the loan''s spread during syndication process. This is presented i
    "FloorFlex" float8,  -- The change in the loan''s base rate floor during syndication process. This is pr
    "FlexSpreadDate" date,  -- Date on which the loan spread changed during syndication process
    "OID" float8,  -- Original Issue Discount. The loan''s issue price as a percentage of par
    "OIDTight" float8,  -- Applies if a loan is launched to market with a range of original issue discount 
    "OIDWide" float8,  -- Applies if a loan is launched to market with a range of original issue discount 
    "OIDFlex" float8,  -- The change in the loan''s OID during syndication process. This is presented in B
    "OIDFlexDate" date,  -- Date when the loan''s OID changed during syndication process
    "Coupon" float8,  -- The annual interest rate paid on a loan
    "AssetClass" text,  -- Debt asset classes group debt lending into different categories. Debts issued wi
    "YTMTalk" float8,  -- The yield to maturity at launch of the loan
    "YTMPrimary" float8,  -- The yield to maturity at closing of the loan
    "YTMBreak" float8,  -- The yield to maturity at which a loan is initially traded in the secondary marke
    "STMPrimary" float8,  -- The spread to maturity at launch of the loan. This is presented in BPS
    "STMSecondary" float8,  -- Spread to maturity at which a loan is initially traded in the secondary market a
    "STCPrimary" float8,  -- The spread to an assumed two-year repayment based on issue price. This is presen
    "STCSecondary" float8,  -- The spread to an assumed two-year repayment based on break price. This is presen
    "Region" text,  -- Region value for debt
    "BreakPrice" float8,  -- The price at which a loan first trades in the secondary market
    "BreakDate" date,  -- The date on which a loan first trades in the secondary market
    "CommitmentFee" float8,  -- The fee paid to lenders on undrawn amounts under a revolving credit or a term lo
    "FacilityFee" float8,  -- A fee paid on a facility''s entire committed amount, regardless of usage. This i
    "LetterOfCreditFee" float8,  -- Letter-of-credit fee. This is presented in BPS
    "LetterOfCreditIssuanceFee" float8,  -- The fee paid to the issuing bank to open a letter of credit. This is presented i
    "PIKInterest" float8,  -- An alternative method of payment on debt where the borrower adds their interest 
    "MezzanineIRR" float8,  -- The percentage return on investment of the mezzanine tranches of a loan
    "PercentToInstitutional" float8,  -- The percentage of the institutional tranche sold to institutional investors at c
    "Tranche" text,  -- Tranche value for loan
    "TickingFee" text,  -- Indicates whether a ticking fee exists for the loan
    "TickingFeeRate" float8,  -- The ticking fee rate. This is presented in BPS
    "TickingFeeComment" text,  -- Ticking Fee Comment for the loan
    "PrepayFee" text,  -- Indicates whether a prepay fee exists for the loan
    "NumberOfShares" bigint,  -- The specific amount of shares owned by the lender for convertible debt
    "AdditionalCharacteristics" text,  -- Loan additional characteristics
    "DebtCommentary" text,  -- External notes
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.DealLoanRelation FROM 'data/DealLoanRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_dealloanrelation_dealid ON main.DealLoanRelation ("DealID");
CREATE INDEX idx_dealloanrelation_rowid ON main.DealLoanRelation ("RowID");

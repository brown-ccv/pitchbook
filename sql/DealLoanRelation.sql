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

COMMENT ON COLUMN main.DealLoanRelation."DealID" IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.DealLoanRelation."FacilityID" IS 'Unique identifier for each debt round within the deal id (PbID). This is the sam';
COMMENT ON COLUMN main.DealLoanRelation."LCDSuperTransactionID" IS 'The unique identifier assigned by LCD at the super transaction, or round, level.';
COMMENT ON COLUMN main.DealLoanRelation."LCDTransactionID" IS 'LCD Transaction ID';
COMMENT ON COLUMN main.DealLoanRelation."DebtName" IS 'Loan Name';
COMMENT ON COLUMN main.DealLoanRelation."DebtType" IS 'Facility Type';
COMMENT ON COLUMN main.DealLoanRelation."DebtAmount" IS 'Total size of a loan or debt obligation at issuance';
COMMENT ON COLUMN main.DealLoanRelation."NewMoney" IS 'Amount of new money available to the issuer';
COMMENT ON COLUMN main.DealLoanRelation."CloseDate" IS 'When the loan transaction is completed';
COMMENT ON COLUMN main.DealLoanRelation."Term" IS 'The length of the loan from close to maturity (in years)';
COMMENT ON COLUMN main.DealLoanRelation."MaturityDate" IS 'Date on which the final loan payment becomes due and the principal amount must b';
COMMENT ON COLUMN main.DealLoanRelation."DebtStatus" IS 'Status of the debt';
COMMENT ON COLUMN main.DealLoanRelation."Seniority" IS 'Refers to the order of repayment in the event of a sale or bankruptcy of the iss';
COMMENT ON COLUMN main.DealLoanRelation."Security" IS 'Indicates whether or not the debt is backed by collateral, and may indicate the ';
COMMENT ON COLUMN main.DealLoanRelation."Spread" IS 'The interest rate premium paid by the borrower over the specified base (benchmar';
COMMENT ON COLUMN main.DealLoanRelation."SpreadAdjustment" IS 'Credit spread adjustment (CSA) used for 1/3/6-month term SOFR. This is presented';
COMMENT ON COLUMN main.DealLoanRelation."AlternativeSpread" IS 'The interest rate premium paid by the borrower over the specified benchmark rate';
COMMENT ON COLUMN main.DealLoanRelation."Floor" IS 'Base rate floor puts a floor (minimum rate) under the base rate for loans, typic';
COMMENT ON COLUMN main.DealLoanRelation."Ceiling" IS 'The maximum interest rate that the borrower will pay to the lender, triggered in';
COMMENT ON COLUMN main.DealLoanRelation."ResetFrequency" IS 'The cadence on which variable interest rate loans are readjusted';
COMMENT ON COLUMN main.DealLoanRelation."RateType" IS 'Credit spread adjustment (CSA) used for 1/3/6-month term SOFR';
COMMENT ON COLUMN main.DealLoanRelation."PriceTight" IS 'Applies if a loan is launched to market with a range of spreads referred to as "';
COMMENT ON COLUMN main.DealLoanRelation."PriceWide" IS 'Applies if a loan is launched to market with a range of spreads referred to as "';
COMMENT ON COLUMN main.DealLoanRelation."FlexAmount" IS 'The change in the loan amount during syndication process. A downsize is indicate';
COMMENT ON COLUMN main.DealLoanRelation."FlexAmountDate" IS 'The date on which the loan amount changed during syndication process';
COMMENT ON COLUMN main.DealLoanRelation."FlexSpread" IS 'The change in the loan''s spread during syndication process. This is presented i';
COMMENT ON COLUMN main.DealLoanRelation."FloorFlex" IS 'The change in the loan''s base rate floor during syndication process. This is pr';
COMMENT ON COLUMN main.DealLoanRelation."FlexSpreadDate" IS 'Date on which the loan spread changed during syndication process';
COMMENT ON COLUMN main.DealLoanRelation."OID" IS 'Original Issue Discount. The loan''s issue price as a percentage of par';
COMMENT ON COLUMN main.DealLoanRelation."OIDTight" IS 'Applies if a loan is launched to market with a range of original issue discount ';
COMMENT ON COLUMN main.DealLoanRelation."OIDWide" IS 'Applies if a loan is launched to market with a range of original issue discount ';
COMMENT ON COLUMN main.DealLoanRelation."OIDFlex" IS 'The change in the loan''s OID during syndication process. This is presented in B';
COMMENT ON COLUMN main.DealLoanRelation."OIDFlexDate" IS 'Date when the loan''s OID changed during syndication process';
COMMENT ON COLUMN main.DealLoanRelation."Coupon" IS 'The annual interest rate paid on a loan';
COMMENT ON COLUMN main.DealLoanRelation."AssetClass" IS 'Debt asset classes group debt lending into different categories. Debts issued wi';
COMMENT ON COLUMN main.DealLoanRelation."YTMTalk" IS 'The yield to maturity at launch of the loan';
COMMENT ON COLUMN main.DealLoanRelation."YTMPrimary" IS 'The yield to maturity at closing of the loan';
COMMENT ON COLUMN main.DealLoanRelation."YTMBreak" IS 'The yield to maturity at which a loan is initially traded in the secondary marke';
COMMENT ON COLUMN main.DealLoanRelation."STMPrimary" IS 'The spread to maturity at launch of the loan. This is presented in BPS';
COMMENT ON COLUMN main.DealLoanRelation."STMSecondary" IS 'Spread to maturity at which a loan is initially traded in the secondary market a';
COMMENT ON COLUMN main.DealLoanRelation."STCPrimary" IS 'The spread to an assumed two-year repayment based on issue price. This is presen';
COMMENT ON COLUMN main.DealLoanRelation."STCSecondary" IS 'The spread to an assumed two-year repayment based on break price. This is presen';
COMMENT ON COLUMN main.DealLoanRelation."Region" IS 'Region value for debt';
COMMENT ON COLUMN main.DealLoanRelation."BreakPrice" IS 'The price at which a loan first trades in the secondary market';
COMMENT ON COLUMN main.DealLoanRelation."BreakDate" IS 'The date on which a loan first trades in the secondary market';
COMMENT ON COLUMN main.DealLoanRelation."CommitmentFee" IS 'The fee paid to lenders on undrawn amounts under a revolving credit or a term lo';
COMMENT ON COLUMN main.DealLoanRelation."FacilityFee" IS 'A fee paid on a facility''s entire committed amount, regardless of usage. This i';
COMMENT ON COLUMN main.DealLoanRelation."LetterOfCreditFee" IS 'Letter-of-credit fee. This is presented in BPS';
COMMENT ON COLUMN main.DealLoanRelation."LetterOfCreditIssuanceFee" IS 'The fee paid to the issuing bank to open a letter of credit. This is presented i';
COMMENT ON COLUMN main.DealLoanRelation."PIKInterest" IS 'An alternative method of payment on debt where the borrower adds their interest ';
COMMENT ON COLUMN main.DealLoanRelation."MezzanineIRR" IS 'The percentage return on investment of the mezzanine tranches of a loan';
COMMENT ON COLUMN main.DealLoanRelation."PercentToInstitutional" IS 'The percentage of the institutional tranche sold to institutional investors at c';
COMMENT ON COLUMN main.DealLoanRelation."Tranche" IS 'Tranche value for loan';
COMMENT ON COLUMN main.DealLoanRelation."TickingFee" IS 'Indicates whether a ticking fee exists for the loan';
COMMENT ON COLUMN main.DealLoanRelation."TickingFeeRate" IS 'The ticking fee rate. This is presented in BPS';
COMMENT ON COLUMN main.DealLoanRelation."TickingFeeComment" IS 'Ticking Fee Comment for the loan';
COMMENT ON COLUMN main.DealLoanRelation."PrepayFee" IS 'Indicates whether a prepay fee exists for the loan';
COMMENT ON COLUMN main.DealLoanRelation."NumberOfShares" IS 'The specific amount of shares owned by the lender for convertible debt';
COMMENT ON COLUMN main.DealLoanRelation."AdditionalCharacteristics" IS 'Loan additional characteristics';
COMMENT ON COLUMN main.DealLoanRelation."DebtCommentary" IS 'External notes';
COMMENT ON COLUMN main.DealLoanRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.DealLoanRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_dealloanrelation_dealid ON main.DealLoanRelation ("DealID");
CREATE INDEX idx_dealloanrelation_rowid ON main.DealLoanRelation ("RowID");

\COPY main.DealLoanRelation FROM 'data/DealLoanRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

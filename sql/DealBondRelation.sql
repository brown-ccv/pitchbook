-- Auto-generated from data dictionary for table: DealBondRelation
-- Columns: 47

DROP TABLE IF EXISTS main.DealBondRelation CASCADE;

CREATE TABLE main.DealBondRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "FacilityID" text,  -- Unique identifier for each debt round within the deal id (PbID). This is the sam
    "LCDSuperTransactionID" integer,  -- The unique identifier assigned by LCD at the super transaction, or round, level.
    "LCDTransactionID" integer,  -- LCD Transaction ID
    "DebtName" text,  -- Bond Name
    "DebtAmount" float8,  -- The size of the bond issuance
    "TradeDate" date,  -- The size of the bond issuance
    "Tenor" float8,  -- The length of the bond from trade date to maturity (in years)
    "MaturityDate" date,  -- The date on which the final bond payment is due
    "DebtStatus" text,  -- Status of the debt
    "Spread" text,  -- The interest rate premium paid by the borrower over the specified base (benchmar
    "Seniority" text,  -- Refers to the order of repayment in the event of a sale or bankruptcy of the iss
    "Security" text,  -- Indicates whether the debt is backed by collateral, and may indicate the specifi
    "Coupon" float8,  -- Coupon rate
    "AssetClass" text,  -- Debt asset classes group debt lending into different categories. Debts issued wi
    "Price" float8,  -- Bond issue price
    "Yield" float8,  -- Bond yield-to-maturity at issuance
    "PriceTalkTight" float8,  -- The highend of the yield range
    "PriceTalkWide" float8,  -- The lowend of the yield range
    "BreakDate" date,  -- The date that the bond breaks into secondary market
    "BreakPrice" float8,  -- The price at which the bond breaks into secondary market
    "BreakYield" float8,  -- Yield at which the bond breaks into the secondary market
    "SettleDate" date,  -- Bond settlement date
    "SettleT" text,  -- Difference, in days, between the settlement date and trdae date (t+days)
    "Floor" float8,  -- The minimum interest rate that the borrower will pay to the lender, triggered in
    "Ceiling" float8,  -- The maximum interest rate that the borrower will pay to the lender, triggered in
    "ResetFrequency" text,  -- The cadence on which variable interest rate loans are readjusted
    "Region" text,  -- Region value for debt
    "RateType" text,  -- Indicates whether the loan is floating rate or fixed rate
    "NonCallYears" float8,  -- The number of years that the bond is non-callable by the issuer
    "Calls" text,  -- Bond call terms, i.e., if the bond is called early, what are the pentalities/res
    "FirstCallPremium" float8,  -- The actual amount paid to bondholders when bond is called, i.e., 103 or 3% premi
    "EquityClawback" text,  -- Allow the issuer to refinance a certain amount of the outstanding bonds with pro
    "EquityClawbackYears" float8,  -- Number of years equity clawback provision applies to the bond
    "EquityClawbackPercentage" float8,  -- Allow the issuer to refinance a certain amount of the outstanding bonds with pro
    "ClawbackValue" float8,  -- The price at which the clawback option is exercised
    "Marketplace" text,  -- Registration Type (144a, 144a life, or public)
    "PIK" text,  -- Clicked if a bond features a payment-in-kind interest
    "CashPIK" text,  -- Applies to bonds that have both cash and PIK interest components
    "PIK_RevFinancing" float8,  -- An alternative method of payment on debt where the borrower adds their interest 
    "Holdco" text,  -- Clicked if bond is issued at holding company level
    "PortabilityClause" text,  -- Indicates whether the bond has a portability clause. The effect of this clause a
    "NumberOfShares" bigint,  -- Specifies the number of shares owned by the lender
    "Convertible" text,  -- Debt that can be converted into equity
    "DebtCommentary" text,  -- External notes
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.DealBondRelation FROM 'data/DealBondRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_dealbondrelation_dealid ON main.DealBondRelation ("DealID");
CREATE INDEX idx_dealbondrelation_rowid ON main.DealBondRelation ("RowID");

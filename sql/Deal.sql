-- Auto-generated from data dictionary for table: Deal
-- Columns: 111

DROP TABLE IF EXISTS main.Deal CASCADE;

CREATE TABLE main.Deal (
    "CompanyID" text,  -- Unique identifier for the company involved in the deal. By default the unique Pi
    "CompanyName" text,  -- Name of the company receiving the financing
    "DealNo" integer,  -- Number given to the financial round based on the financing history of the compan
    "DealID" text,  -- Primary key for the deal. By default the unique PitchBook ID (PbID) will be deli
    "DealDate" date,  -- Date the financing event was completed
    "AnnouncedDate" date,  -- Date the financing event was announced
    "DealSize" float8,  -- Total amount of capital invested into a company by an investor or group of inves
    "NativeAmountOfDeal" float8,  -- The size of the deal in the native amount
    "DealStatus" text,  -- Current status of a deal (Ex. complete, in progress, postponed, failed)
    "DealSizeStatus" text,  -- Gauge on the accuracy of the field (Estimated / Actual)
    "PercentAcquired" float8,  -- Percentage of stake acquired in the round of financing
    "RaisedToDate" float8,  -- Sum of known capital injected since last majority transaction or recapitalizatio
    "VCRound" text,  -- Round of venture capital financing
    "VCRoundUp_Down_Flat" text,  -- Determined by whether the share price in the round is lower, the same, or greate
    "TotalInvestedCapital" float8,  -- Amount of capital (equity and net new debt) put in by the investor. Amount in mi
    "InvestorOwnership" float8,  -- Percentage of the company owned by investors delivered as a decimal
    "StockSplit" text,  -- Company divides its existing shares into multiple shares. This increases the num
    "DealType" text,  -- Identifies and categorizes distinct types of transaction or financing rounds bet
    "DealType2" text,  -- Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type 
    "DealType3" text,  -- Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type 
    "DealClass" text,  -- The institutional source of the deal financing (Ex. Private Equity, Venture Capi
    "DealSynopsis" text,  -- Summary of a transaction including Deal Size, Deal Type, Deal Date, and the part
    "NativeCurrencyOfDeal" text,  -- Local currency of the deal
    "TotalInvestedEquity" float8,  -- Amount of equity (cash) put in by the investor
    "AddOn" text,  -- ''Yes'' or ''No'' if the company involved in the deal was a company purchased as
    "AddOnSponsors" text,  -- Investor(s) who back the portfolio company (Add-on platform) that is making the 
    "AddOnPlatform" text,  -- Company that acquires another company through a Buyout/Add-On deal with the fina
    "TotalNewDebt" float8,  -- Total amount of debt raised during a single debt financing event
    "Debts" text,  -- Aggregated information about debt types and their amounts
    "DebtRaisedInRound" float8,  -- Total amount of debt raised during a single debt financing event
    "TotalLoanSize" float8,  -- Total bank loan size (Revolving Credit / Term Loan A) within the transaction
    "TotalInstLoanSize" float8,  -- Total institutional loan size (Term Loan B/Second Lien) within the transaction
    "ContingentPayout" float8,  -- Amount of money contingent on business milestones being met in order for it to b
    "Employees" integer,  -- Current number of employees at the company at the time of the deal
    "BusinessStatus" text,  -- Identifies a company''s current status in the business lifecycle at the time of 
    "FinancingStatus" text,  -- Equivalent to Backing Status. Represents the type of investors that are financia
    "SiteLocation" text,  -- Location site of the company at the time of the deal
    "ExitScope" text,  -- If the round is an exit round (in which the investor is exiting the investment v
    "PremoneyValuation" float8,  -- Valuation of the target company prior to the round financing. Amount in millions
    "PostValuation" float8,  -- Valuation of the company immediately after a financing event. Amount in millions
    "PostValuationStatus" text,  -- Whether or not the post valuation is an actual or estimated value
    "CEOPBId" text,  -- PitchBook ID (PbID) of the CEO of the company at the time of the deal
    "CEOFirstName" text,  -- First name of the CEO
    "CEOLastName" text,  -- Last name of the CEO
    "CEOMiddle" text,  -- Middle name of the CEO
    "CEOPrefix" text,  -- Prefix of the CEO
    "CEOSuffix" text,  -- Suffix of the CEO
    "CEO" text,  -- Full name of the CEO of the company at the time of the deal
    "CEOPhone" text,  -- Phone number of the CEO at the time of the deal
    "CEOEmail" text,  -- Email of the CEO at the time of the deal
    "CEOBiography" text,  -- Short biography of the CEO at the time of the deal
    "CEOEducation" text,  -- Summary of the education of the CEO at the time of the deal
    "TypeOfStock" text,  -- Type of stock given to the investor(s) in the round. E.g. common, preferred, par
    "SharesSought" bigint,  -- Total number of shares sought by the investor in the round of financing. Alterna
    "PricePerShare" float8,  -- Price per share paid to the target company at the time of the deal
    "NumberOfSharesAcquired" bigint,  -- Total number of shares acquired by the buyers/investors in the round of financin
    "ConversionRatio" text,  -- Number of shares of common stock that could be obtained by converting each share
    "EquityPayoff" float8,  -- The payoff of equity to investors. Only used for M&A and LBO rounds
    "SeriesOfStock" text,  -- Stock''s placement in the overall sequence of stock issues
    "LiquidationPreferences" text,  -- Amount per share that a holder of a given series of Preferred Stock will receive
    "ParticipatingVsNonParticipating" text,  -- Series terms either participating or non-participating
    "DividendRights" text,  -- Tagged  ''Yes'' or ''No'' depending on if dividend rights were given in the stoc
    "Cumulative_NonCumulative" text,  -- Tagged ''Cumulative'' or ''Non-cumulative'' depending on the stock information f
    "AntiDilutionProvisions" text,  -- Provision is used to protect investors in the event a company issues equity at a
    "RedemptionRights" text,  -- Allow investors to require the company to repurchase their preferred stock under
    "BoardVotingRights" text,  -- ''Yes'' if voting rights or ''No''
    "GeneralVotingRights" text,  -- ''Yes'' if general voting rights or ''No''
    "OriginalRegistrationDate" date,  -- Date in which the IPO is registered with the SEC or exchange board
    "CurrentRegistrationDate" date,  -- Date corresponding to the current status. If the IPO is completed, then the date
    "TickerSymbol" text,  -- Also known as a stock symbol, is an arrangement of characters (usually letters) 
    "Exchange" text,  -- The stock exchange on which the company''s securities are bought and sold
    "FillingRangeLow" float8,  -- Lowest price during IPO (Price band offered in book building process)
    "FillingRangeHigh" float8,  -- Highest price during IPO (Price band offered in book building process)
    "NumberOfShares" bigint,  -- Number of shares
    "MarketCapEndOfFirstTradingDay" float8,  -- The total dollar market value of all of a company''s outstanding shares on the d
    "Price1DayAfterOffering" float8,  -- Price of stock 1 day after IPO
    "Price5DaysAfterOffering" float8,  -- Price of stock 5 days after IPO
    "Price30DaysAfterOffering" float8,  -- Price of stock 30 days after IPO
    "Investors" integer,  -- Count of the total investors in the deal
    "NewInvestors" integer,  -- Count of new investors that have no prior investments in the company
    "FollowOnInvestors" integer,  -- Count of follow-on investors
    "PeriodEndDate" date,  -- The period end-date of the financial statement tagged to the deal
    "ImpliedEV" float8,  -- An alternative valuation metric calculated from a combination of deal size and a
    "Revenue" float8,  -- Total amount of money received by a company for the goods or services provided d
    "RevenueGrowthSinceLastDebtDeal" float8,  -- Percentage change in revenue for the latest transaction over the previous transa
    "GrossProfit" float8,  -- Revenue minus its cost of goods sold. Default to deliver in millions
    "NetIncome" float8,  -- Net profit of the company (Revenue - Expenses). Default to deliver in millions
    "EBITDA" float8,  -- Earnings Before Interest, Taxes, Depreciation, and Amortization.'' Calculated as
    "TotalDebt" float8,  -- Total Debt represents the combined amounts of all short-term and long-term debts
    "FiscalYear" integer,  -- Fiscal year covered by the current financial statement
    "Debt_EBITDA" float8,  -- Valuation metric that compares the amount of debt raised in the round to the com
    "Debt_Equity" float8,  -- Valuation metric that compares the amount of debt raised in the round to the com
    "DealSize_EBITDA" float8,  -- A valuation metric that compares the deal size of a company to the company''s EB
    "Valuation_EBITDA" float8,  -- Valuation metric that compares the post valuation of a company to the company''s
    "ImpliedEV_EBITDA" float8,  -- Valuation measure that compares the implied enterprise value of a company to the
    "ImpliedEV_EBIT" float8,  -- Valuation measure that compares the implied enterprise value of a company to the
    "Valuation_EBIT" float8,  -- Valuation metric that compares the post valuation of a company to the company''s
    "Valuation_NetIncome" float8,  -- Valuation metric that compares the post valuation of a company to the company''s
    "DealSize_EBIT" float8,  -- Valuation metric that compares the deal size of a company to the company''s EBIT
    "DealSize_NetIncome" float8,  -- Valuation metric that compares the deal size of a company to the company''s Net 
    "DealSize_Revenue" float8,  -- Valuation metric that compares the deal size of a company to the company''s reve
    "Valuation_Revenue" float8,  -- Valuation metric that compares the post valuation of a company to the company''s
    "ImpliedEV_Revenue" float8,  -- Valuation measure that compares the implied enterprise value of a company to the
    "DealSize_CashFlow" float8,  -- Valuation metric that compares the deal size of a company to the company''s cash
    "Valuation_CashFlow" float8,  -- Valuation metric that compares the post valuation of a company to the company''s
    "ImpliedEV_CashFlow" float8,  -- Valuation measure that compares the implied enterprise value of a company to the
    "ImpliedEV_NetIncome" float8,  -- Valuation measure that compares the implied enterprise value of a company to the
    "EBITDAMarginPercent" float8,  -- Ratio of earnings before interest, taxes, depreciation and amortization to reven
    "PitchBookCreatedDate" date,  -- Date showing when the deal was initially created within the PitchBook database a
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.Deal FROM 'data/Deal.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

ALTER TABLE main.Deal ADD PRIMARY KEY ("DealID");

-- Auto-generated from data dictionary for table: Fund
-- Columns: 53

DROP TABLE IF EXISTS main.Fund CASCADE;

CREATE TABLE main.Fund (
    "FundID" text,  -- Primary key for the fund. By default the unique PitchBook ID (PbID) will be deli
    "FundName" text,  -- Name of the fund
    "FundFormerName" text,  -- Former name(s) of the fund
    "FundNo" text,  -- Number of the fund
    "FirstFund" text,  -- Denotes if the fund is the debut fund for the investor
    "Investor" text,  -- Comma separated list or breakout table of firm(s) that raised, invests, and cont
    "InvestorWebsite" text,  -- Website of the firm that raised, invests, and controls the fund
    "Vintage" integer,  -- Vintage Year is the year in which a fund makes its first investment by deliverin
    "FundStatus" text,  -- Stage of the investment cycle the fund is in
    "FundLifespan" text,  -- Whether the vehicle will experience a termination/liquidation
    "FundSize" float8,  -- Total amount of capital committed by the limited partners of the fund. It includ
    "NativeFundSize" float8,  -- Total amount of capital committed by the limited partners of the fund. It includ
    "NativeFundCurrency" text,  -- Native Currency Code
    "FundSizeGroup" text,  -- Custom buckets that categorize funds into groups based on size. The ranges are: 
    "FundCategory" text,  -- Broad classification similar to fund type that defines the overall type of inves
    "FundStructure" text,  -- The organizational framework or operational format of the investment vehicle
    "InceptionDate" date,  -- The date on which the fund was first made available to investors
    "ExchangeStatus" text,  -- Whether the fund is listed on public exchanges
    "FundType" text,  -- Types of deals the fund will engage in (e.g. buyout, debt, fund of funds, crowds
    "FundAccessPoint" text,  -- The method by which funds implement their investment strategy. It is a broader c
    "AdditionalAccessPoint" text,  -- ''Additional Access Point'' is mean to represent the fund''s additional investme
    "SBICFund" text,  -- Denotes if the fund received additional investment capital from the Small Busine
    "TargetsPrivateWealthInvestors" text,  -- The investor base this fund is intended for
    "SFDR" text,  -- Sustainable Finance Disclosure Regulation
    "CloseDate" date,  -- Date that the fund stopped accepting additional commitments
    "OpenDate" date,  -- Date that the fund began accepting commitments
    "FundTargetSizeLow" float8,  -- Minimum amount of funds that the fund is seeking to raise
    "FundTargetSizeHigh" float8,  -- Maximum amount of funds that the fund is seeking to raise
    "FundTargetSize" text,  -- Fundraising goal of the fund
    "FundLocation" text,  -- City, state of the team of the fund. Generally city, country for global location
    "FundCity" text,  -- City where the fund is located
    "FundState_Province" text,  -- State or province where the fund is located
    "FundCountry" text,  -- Country where a fund is located
    "TimeTakenToCloseFund" text,  -- Total time taken to close the fund
    "FundFamily" text,  -- Series of funds that share the same strategy, geography, and financial sponsor. 
    "AdditionalNotes" text,  -- Additional information from investor''s website or news/press releases about the
    "TotalFundInvestments" integer,  -- Count of total number of investments of the fund
    "TotalActiveFundInvestments" integer,  -- Count of total number of active investments of the fund
    "PreferredIndustry" text,  -- Sectors of business that the fund will target for the bulk of its investments
    "PreferredVerticals" text,  -- Industry verticals that the fund will target for the bulk of its investments
    "PreferredGeography" text,  -- Geographic regions that the fund will target for its investments
    "PreferredInvestmentTypes" text,  -- Fund''s preference for specific financing types
    "OtherInvestmentPreferences" text,  -- Comma separated list of the fund''s preference for majority/minority stakes and 
    "PreferredInvestmentAmount" text,  -- Fund looks to invest this amount in each portfolio company
    "PreferredDealSize" text,  -- Fund looks for companies seeking this amount of capital in total
    "PreferredCompanyValuation" text,  -- Fund looks for companies valued at this amount
    "PreferredEBITDA" text,  -- Fund looks for companies with this amount of EBITDA
    "PreferredEBIT" text,  -- Fund looks for companies with this amount of EBIT
    "PreferredRevenue" text,  -- Fund looks for companies with this amount of revenue
    "PreferredInvestmentHorizon" text,  -- Fund plans to hold onto its investments for this amount of time
    "PitchBookCreatedDate" date,  -- Date showing when the fund was initially created within the PitchBook database a
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.Fund FROM 'data/Fund.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

ALTER TABLE main.Fund ADD PRIMARY KEY ("FundID");

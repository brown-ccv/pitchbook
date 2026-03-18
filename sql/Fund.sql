-- Auto-generated from data dictionary for table: Fund
-- Columns: 53

DROP TABLE IF EXISTS main.Fund CASCADE;

CREATE TABLE main.Fund (
    "FundID" text PRIMARY KEY,  -- Primary key for the fund. By default the unique PitchBook ID (PbID) will be deli
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

COMMENT ON COLUMN main.Fund."FundID" IS 'Primary key for the fund. By default the unique PitchBook ID (PbID) will be deli';
COMMENT ON COLUMN main.Fund."FundName" IS 'Name of the fund';
COMMENT ON COLUMN main.Fund."FundFormerName" IS 'Former name(s) of the fund';
COMMENT ON COLUMN main.Fund."FundNo" IS 'Number of the fund';
COMMENT ON COLUMN main.Fund."FirstFund" IS 'Denotes if the fund is the debut fund for the investor';
COMMENT ON COLUMN main.Fund."Investor" IS 'Comma separated list or breakout table of firm(s) that raised, invests, and cont';
COMMENT ON COLUMN main.Fund."InvestorWebsite" IS 'Website of the firm that raised, invests, and controls the fund';
COMMENT ON COLUMN main.Fund."Vintage" IS 'Vintage Year is the year in which a fund makes its first investment by deliverin';
COMMENT ON COLUMN main.Fund."FundStatus" IS 'Stage of the investment cycle the fund is in';
COMMENT ON COLUMN main.Fund."FundLifespan" IS 'Whether the vehicle will experience a termination/liquidation';
COMMENT ON COLUMN main.Fund."FundSize" IS 'Total amount of capital committed by the limited partners of the fund. It includ';
COMMENT ON COLUMN main.Fund."NativeFundSize" IS 'Total amount of capital committed by the limited partners of the fund. It includ';
COMMENT ON COLUMN main.Fund."NativeFundCurrency" IS 'Native Currency Code';
COMMENT ON COLUMN main.Fund."FundSizeGroup" IS 'Custom buckets that categorize funds into groups based on size. The ranges are: ';
COMMENT ON COLUMN main.Fund."FundCategory" IS 'Broad classification similar to fund type that defines the overall type of inves';
COMMENT ON COLUMN main.Fund."FundStructure" IS 'The organizational framework or operational format of the investment vehicle';
COMMENT ON COLUMN main.Fund."InceptionDate" IS 'The date on which the fund was first made available to investors';
COMMENT ON COLUMN main.Fund."ExchangeStatus" IS 'Whether the fund is listed on public exchanges';
COMMENT ON COLUMN main.Fund."FundType" IS 'Types of deals the fund will engage in (e.g. buyout, debt, fund of funds, crowds';
COMMENT ON COLUMN main.Fund."FundAccessPoint" IS 'The method by which funds implement their investment strategy. It is a broader c';
COMMENT ON COLUMN main.Fund."AdditionalAccessPoint" IS '''Additional Access Point'' is mean to represent the fund''s additional investme';
COMMENT ON COLUMN main.Fund."SBICFund" IS 'Denotes if the fund received additional investment capital from the Small Busine';
COMMENT ON COLUMN main.Fund."TargetsPrivateWealthInvestors" IS 'The investor base this fund is intended for';
COMMENT ON COLUMN main.Fund."SFDR" IS 'Sustainable Finance Disclosure Regulation';
COMMENT ON COLUMN main.Fund."CloseDate" IS 'Date that the fund stopped accepting additional commitments';
COMMENT ON COLUMN main.Fund."OpenDate" IS 'Date that the fund began accepting commitments';
COMMENT ON COLUMN main.Fund."FundTargetSizeLow" IS 'Minimum amount of funds that the fund is seeking to raise';
COMMENT ON COLUMN main.Fund."FundTargetSizeHigh" IS 'Maximum amount of funds that the fund is seeking to raise';
COMMENT ON COLUMN main.Fund."FundTargetSize" IS 'Fundraising goal of the fund';
COMMENT ON COLUMN main.Fund."FundLocation" IS 'City, state of the team of the fund. Generally city, country for global location';
COMMENT ON COLUMN main.Fund."FundCity" IS 'City where the fund is located';
COMMENT ON COLUMN main.Fund."FundState_Province" IS 'State or province where the fund is located';
COMMENT ON COLUMN main.Fund."FundCountry" IS 'Country where a fund is located';
COMMENT ON COLUMN main.Fund."TimeTakenToCloseFund" IS 'Total time taken to close the fund';
COMMENT ON COLUMN main.Fund."FundFamily" IS 'Series of funds that share the same strategy, geography, and financial sponsor. ';
COMMENT ON COLUMN main.Fund."AdditionalNotes" IS 'Additional information from investor''s website or news/press releases about the';
COMMENT ON COLUMN main.Fund."TotalFundInvestments" IS 'Count of total number of investments of the fund';
COMMENT ON COLUMN main.Fund."TotalActiveFundInvestments" IS 'Count of total number of active investments of the fund';
COMMENT ON COLUMN main.Fund."PreferredIndustry" IS 'Sectors of business that the fund will target for the bulk of its investments';
COMMENT ON COLUMN main.Fund."PreferredVerticals" IS 'Industry verticals that the fund will target for the bulk of its investments';
COMMENT ON COLUMN main.Fund."PreferredGeography" IS 'Geographic regions that the fund will target for its investments';
COMMENT ON COLUMN main.Fund."PreferredInvestmentTypes" IS 'Fund''s preference for specific financing types';
COMMENT ON COLUMN main.Fund."OtherInvestmentPreferences" IS 'Comma separated list of the fund''s preference for majority/minority stakes and ';
COMMENT ON COLUMN main.Fund."PreferredInvestmentAmount" IS 'Fund looks to invest this amount in each portfolio company';
COMMENT ON COLUMN main.Fund."PreferredDealSize" IS 'Fund looks for companies seeking this amount of capital in total';
COMMENT ON COLUMN main.Fund."PreferredCompanyValuation" IS 'Fund looks for companies valued at this amount';
COMMENT ON COLUMN main.Fund."PreferredEBITDA" IS 'Fund looks for companies with this amount of EBITDA';
COMMENT ON COLUMN main.Fund."PreferredEBIT" IS 'Fund looks for companies with this amount of EBIT';
COMMENT ON COLUMN main.Fund."PreferredRevenue" IS 'Fund looks for companies with this amount of revenue';
COMMENT ON COLUMN main.Fund."PreferredInvestmentHorizon" IS 'Fund plans to hold onto its investments for this amount of time';
COMMENT ON COLUMN main.Fund."PitchBookCreatedDate" IS 'Date showing when the fund was initially created within the PitchBook database a';
COMMENT ON COLUMN main.Fund."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.Fund."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

\COPY main.Fund FROM 'data/Fund.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

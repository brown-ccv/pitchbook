-- Auto-generated from data dictionary for table: Investor
-- Columns: 140

DROP TABLE IF EXISTS main.Investor CASCADE;

CREATE TABLE main.Investor (
    "InvestorID" text,  -- Primary key for the investor. By default the unique PitchBook ID (PbID) will be 
    "InvestorName" text,  -- Name of the investor
    "InvestorAlsoKnownAs" text,  -- Alternative names for the investor
    "InvestorFormerName" text,  -- Former Name(s) of the investor
    "InvestorLegalName" text,  -- Legal name of the investor
    "Description" text,  -- Summary of the investor and the business it conducts or of investment preference
    "InvestorStatus" text,  -- Status that communicates how active the investor is in terms of investing
    "PrimaryInvestorType" text,  -- Primary investor type
    "OtherInvestorTypes" text,  -- All other investor types comma separated
    "AUM" float8,  -- Standing for Assets Under Management, AUM represents the amount of capital manag
    "AUMNativeAmount" float8,  -- Standing for Assets Under Management, AUM represents the amount of capital manag
    "InvestorNativeCurrency" text,  -- Investor native currency
    "DryPowder" float8,  -- Amount of cash reserves or liquid assets available to deploy by an investor
    "YearFounded" integer,  -- Year the investor was founded
    "Exchange" text,  -- Stock exchange on which the investors securities are bought and sold
    "Ticker" text,  -- Symbol used to identify the investor on the public market
    "Website" text,  -- Website of the investor
    "DescriptionShort" text,  -- Short text description of the investor''s business
    "ParentCompanyID" text,  -- PitchBook ID (PbID) of the organization that has a majority ownership stake in t
    "ParentCompany" text,  -- Name of the organization that has a majority ownership stake in the company
    "TradeAssociations" text,  -- Comma separated list of trade associations that the investor is a member of
    "InvestmentProfessionalCount" integer,  -- Total number of investments professionals, including positions such as principal
    "InvestmentProfessionalCountDate" date,  -- Date for investment professional count
    "MedianRoundAmount" float8,  -- The median size of investments made by the investor
    "MedianValuation" float8,  -- The median valuation of investments made by the investor
    "MostLikelyFundraising" text,  -- Field is generated based on a variety of criteria including recently opened or l
    "MinFundSize" float8,  -- Indicates the minimum fund size (corresponding currency, in millions) that the i
    "MaxFundSize" float8,  -- Indicates the maximum fund size (corresponding currency, in millions) that the i
    "MedianFundSize" float8,  -- This is a calculated field based on the investor''s previous fund sizes
    "TopLevelParent" text,  -- Name of the entity that is the topmost entity within the hierarchy of the entire
    "TopLevelParentID" text,  -- PitchBook ID (PBId) of the entity that is the topmost entity within the hierarch
    "OwnershipStatus" text,  -- Summary detailing how the company is held. It is the ownership under which the c
    "CompanyFinancingStatus" text,  -- Represents the type of investors that are financially backing the company (Backi
    "PrimaryIndustrySector" text,  -- Broad industry category that contains industry groups and codes
    "PrimaryIndustryGroup" text,  -- Industry sub-category that provides a more specific classification
    "PrimaryIndustryCode" text,  -- Primary industry the company operates in
    "AllIndustries" text,  -- Comma-separated list of all industries the company operates in
    "Verticals" text,  -- Comma-separated list of all verticals, or classifiers that may span across multi
    "Keywords" text,  -- Keywords that describe the company''s business; comma separated
    "CikCode" text,  -- Central Index Key (CIK) number is given to a company by the US Securities and Ex
    "MorningstarID" text,  -- An ID provided by Morningstar that needs to be attached to the corresponding ent
    "HQLocation" text,  -- City and country of the primary investor
    "HQAddressLine1" text,  -- Address of the investor''s headquarters
    "HQAddressLine2" text,  -- Second line of the headquarter''s address
    "HQCity" text,  -- City where the investor is headquartered
    "HQState_Province" text,  -- State or province where the investor is headquartered
    "HQPostCode" text,  -- Post code where the investor is headquartered
    "HQCountry" text,  -- Country where the investor is headquartered
    "HQPhone" text,  -- Phone number of the investor''s headquarters
    "HQFax" text,  -- Fax number of the investor''s headquarters
    "HQEmail" text,  -- Email address for the investor''s headquarters
    "HQGlobalRegion" text,  -- Global Regions include: United States, Canada, Europe, Americas, Asia, Africa, M
    "HQGlobalSubRegion" text,  -- Sub-region of a investor''s headquarters. Global Sub Regions include: North Amer
    "AlternateOfficeCount" integer,  -- Count of alternate offices
    "PrimaryContactPBId" text,  -- PitchBook ID (PbID) for the specific member of the management team that is desig
    "PrimaryContactFirstName" text,  -- First name of the primary contact
    "PrimaryContactLastName" text,  -- Last name of the primary contact
    "PrimaryContactMiddle" text,  -- Middle name of the primary contact
    "PrimaryContactPrefix" text,  -- Prefix of the primary contact
    "PrimaryContactSuffix" text,  -- Suffix of the primary contact
    "PrimaryContact" text,  -- Full name of the specific member of the management team that is designated as th
    "PrimaryContactTitle" text,  -- Title of the primary contact
    "PrimaryContactEmail" text,  -- Email address of the primary contact
    "PrimaryContactPhone" text,  -- Phone number of the primary contact
    "TotalActivePortfolio" integer,  -- Count of the total active portfolio of the investor
    "TotalInvestments" integer,  -- Count of the total investments (deals/financial transactions) of the investor
    "TotalInvestmentsInTheLast7Days" integer,  -- Count of total number of investments the investor has made in the last 7 days
    "TotalInvestmentsInTheLast6Months" integer,  -- Count of total number of investments the investor has made in the last 6 months
    "TotalInvestmentsInTheLast12Months" integer,  -- Count of total number of investments the investor has made in the last 12 months
    "TotalInvestmentsInTheLast2Years" integer,  -- Count of total number of investments the investor has made in the last 2 years
    "TotalInvestmentsInTheLast5Years" integer,  -- Count of total number of investments the investor has made in the last 5 years
    "TotalExits" integer,  -- Count OR breakout table of the total exits (deals/financial transactions) of the
    "TotalFundsOpen" integer,  -- Total number of open funds for the investor
    "TotalFundsClosed" integer,  -- Total number of closed funds for the investor
    "TotalFundsClosedInTheLast6Months" integer,  -- Total number of funds closed in the last 6 months
    "TotalFundsClosedInTheLast12Months" integer,  -- Total number of funds closed in the last 12 months
    "TotalFundsClosedInTheLast2Years" integer,  -- Total number of funds closed in the last 2 years
    "TotalFundsClosedInTheLast5Years" integer,  -- Total number of funds closed in the last 5 years
    "PreferredInvestmentAmount" text,  -- Investor prefers to invest this amount in each portfolio company
    "PreferredInvestmentAmountMin" float8,  -- Investor looks to invest at least this amount in each portfolio company
    "PreferredInvestmentAmountMinNativeAmount" float8,  -- Investor looks to invest at least this amount in each portfolio company in nativ
    "PreferredInvestmentAmountMax" float8,  -- Investor looks to invest no more than this amount in each portfolio company
    "PreferredInvestmentAmountMaxNativeAmount" float8,  -- Investor looks to invest no more than this amount in each portfolio company in n
    "PreferredDealSize" text,  -- Investor prefers invest in deals of this size
    "PreferredDealSizeMin" float8,  -- The minimum deal size Investor targets
    "PreferredDealSizeMinNativeAmount" float8,  -- The minimum deal size Investor targets in native currency
    "PreferredDealSizeMax" float8,  -- The maximum deal size Investor targets
    "PreferredDealSizeMaxNativeAmount" float8,  -- The maximum deal size Investor targets in native currency
    "PreferredCompanyValuation" text,  -- Investor looks for companies valued at this amount
    "PreferredCompanyValuationMin" float8,  -- The preferred minimum valuation of a company that Investor targets
    "PreferredValuationMinNativeAmount" float8,  -- The preferred minimum valuation of a company that Investor targets in native cur
    "PreferredCompanyValuationMax" float8,  -- The preferred maximum valuation of a company that Investor targets
    "PreferredValuationMaxNativeAmount" float8,  -- The preferred maximum valuation of a company that Investor targets in native cur
    "PreferredEBITDA" text,  -- Investor looks for companies with this amount of EBITDA
    "PreferredEBITDAMin" float8,  -- Investor looks for companies with a minimum of this amount of EBITDA
    "PreferredEBITDAMinNativeAmount" float8,  -- Investor looks for companies with a minimum of this amount of EBITDA in native c
    "PreferredEBITDAMax" float8,  -- Investor looks for companies with a maximum of this amount of EBITDA
    "PreferredEBITDAMaxNativeAmount" float8,  -- Investor looks for companies with a maximum of this amount of EBITDA in native c
    "PreferredEBIT" text,  -- Investor looks for companies with this amount of EBIT
    "PreferredEBITMin" float8,  -- Investor looks for companies with this minimum amount of EBIT
    "PreferredEBITMinNativeAmount" float8,  -- Investor looks for companies with this minimum amount of EBIT in native currency
    "PreferredEBITMax" float8,  -- Investor looks for companies with this maximum amount of EBIT
    "PreferredEBITMaxNativeAmount" float8,  -- Investor looks for companies with this maximum amount of EBIT in native currency
    "PreferredRevenue" text,  -- Investor looks for companies with this amount of revenue
    "PreferredRevenueMax" float8,  -- Investor looks for companies with a maximum of this amount of revenue
    "PreferredRevenueMaxNativeAmount" float8,  -- Investor looks for companies with a maximum of this amount of revenue in native 
    "PreferredRevenueMin" float8,  -- Investor looks for companies with a minimum of this amount of revenue
    "PreferredRevenueMinNativeAmount" float8,  -- Investor looks for companies with a minimum of this amount of revenue in native 
    "PreferredInvestmentHorizon" text,  -- Investor plans to hold onto its investments for this amount of time
    "PreferredInvestmentHorizonMax" text,  -- Investor plans to hold onto its investments for this maximum amount of time
    "PreferredInvestmentHorizonMin" text,  -- Investor plans to hold onto its investments for this minimum amount of time
    "PreferredIndustry" text,  -- List of PitchBook industry sector, group, codes that the investor prefers to inv
    "PreferredGeography" text,  -- List of geographies the investor prefers to invest in
    "PreferredInvestmentTypes" text,  -- List of specific financing types the investor prefers to invest in
    "OtherInvestmentPreferences" text,  -- Investor''s preference for majority/minority stakes and whether it prefers to le
    "PreferredVerticals" text,  -- List of verticals the investor prefers to invest in
    "LastInvestmentCompany" text,  -- Name of the company the investor last invested in
    "LastInvestmentDate" date,  -- Date of the last investment
    "LastInvestmentSize" float8,  -- Size of the last investment in millions
    "LastInvestmentSizeStatus" text,  -- Whether the last investment size is estimated by PitchBook or an actual figure
    "LastInvestmentValuation" float8,  -- Valuation of the company involved in the last investment
    "LastInvestmentValuationStatus" text,  -- Whether the last investment valuation is estimated by PitchBook or an actual fig
    "LastInvestmentType" text,  -- Type of financing that was provided during the last investment
    "LastInvestmentType2" text,  -- Sub-type of the primary deal type that provides additional information regarding
    "LastInvestmentType3" text,  -- Sub-type of the secondary deal type description that provides additional informa
    "LastInvestmentClass" text,  -- Further clarifies the last investment type (Corporate, VC, PE, Debt, Bankruptcy,
    "LastFinancingDebtSize" float8,  -- Total debt amount for last investor investment
    "LastFinancingDebt" text,  -- All debts including the amounts and debt characteristics for the last investment
    "LastFinancingDebtDate" date,  -- The date of last investor investments
    "LastInvestmentStatus" text,  -- Denotes the current status of the last investment (Ex. complete, in progress, po
    "LastClosedFundName" text,  -- Name of the last closed fund
    "LastClosedFundVintage" integer,  -- Vintage year of the last closed fund
    "LastClosedFundSize" float8,  -- Size of the last closed fund
    "LastClosedFundType" text,  -- Type of fund last closed
    "LastClosedFundCloseDate" date,  -- Date of the final close of the last closed fund
    "LastClosedFundOpenDate" date,  -- Date which the last closed fund opened for commitments
    "PitchBookProfileLink" text,  -- URL of the PitchBook profile of the investor
    "PitchBookCreatedDate" date,  -- Date showing when the investor was initially created within the PitchBook databa
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.Investor FROM 'data/Investor.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

ALTER TABLE main.Investor ADD PRIMARY KEY ("InvestorID");

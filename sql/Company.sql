-- Auto-generated from data dictionary for table: Company
-- Columns: 128

DROP TABLE IF EXISTS main.Company CASCADE;

CREATE TABLE main.Company (
    CompanyID text PRIMARY KEY,  -- Primary key for the company. By default the unique PitchBook ID (PBId) will be d
    CompanyName text,  -- Name of the company
    CompanyAlsoKnownAs text,  -- Other name(s) the company goes by, comma separated if multiple names exist
    CompanyFormerName text,  -- Former name(s) of the company
    CompanyLegalName text,  -- Legal name of the company
    Description text,  -- Text description of the company''s business
    Keywords text,  -- Keywords that describe the company''s business; comma separated
    CompanyFinancingStatus text,  -- Represents the type of investors that are financially backing the company (Backi
    CompanyFinancingStatusDate date,  -- Date of the most recent financing event
    TotalRaised float8,  -- Net of all capital injected into a company. The calculation resets after majorit
    TotalRaisedNativeAmount float8,  -- Total Raised in native amount. Amount in millions
    TotalRaisedNativeCurrency text,  -- Native currency for Total Raised financial data
    BusinessStatus text,  -- Identifies the current stage of business. Values range from startup to profitabl
    BusinessStatusDate date,  -- Date when updated business status
    OwnershipStatus text,  -- Summary detailing how the company is held. It is the ownership under which the c
    OwnershipStatusDate date,  -- Date when updated ownership status
    Universe text,  -- Represents the category that a company falls into based on the type of investors
    Website text,  -- Website of the company
    Employees integer,  -- Number of people employed by the company
    EmployeeAsOfDate date,  -- Date when added number of people employed by the company
    DescriptionShort text,  -- Short text description of the company''s business
    Exchange text,  -- Exchange on which the company is registered
    Ticker text,  -- Symbol used to identify the company on the public market
    YearFounded integer,  -- Year the company was founded
    ParentCompany text,  -- Name of the entity that has a majority ownership stake in the company
    ParentCompanyID text,  -- PitchBook ID (PbID) of the organization that has a majority ownership stake in t
    TopLevelParent text,  -- Name of the entity that is the topmost company within the hierarchy of the entir
    TopLevelParentID text,  -- PitchBook ID (PbID) of the entity that is the topmost company within the hierarc
    CikCode text,  -- Central Index Key (CIK) numbers are given to a company by the US Securities and 
    MorningstarID text,  -- An ID provided by Morningstar that needs to be attached to the corresponding ent
    PrimaryIndustrySector text,  -- Broad industry category that contains industry groups and codes
    PrimaryIndustryGroup text,  -- Industry sub-category that provides a more specific classification
    PrimaryIndustryCode text,  -- Primary industry the company operates in
    AllIndustries text,  -- Comma-separated list of all industries the company operates in
    Verticals text,  -- Comma-separated list of all verticals, or classifiers that may span across multi
    EmergingSpaces text,  -- Emerging spaces tagged to the company
    HQLocation text,  -- Geographical location of a company''s headquarters. Includes city, state for US-
    HQAddressLine1 text,  -- Address of the company''s headquarters
    HQAddressLine2 text,  -- Second line of the headquarters'' address
    HQCity text,  -- City where the company is headquartered
    HQState_Province text,  -- State or province where the company is headquartered
    HQPostCode text,  -- Post code where the company is headquartered
    HQCountry text,  -- Country where the company is headquartered
    HQPhone text,  -- Phone number of the company''s headquarters
    HQFax text,  -- Fax number of the company''s headquarters
    HQEmail text,  -- Email address for the company''s headquarters
    HQGlobalRegion text,  -- Global Region of the company''s headquarters. Regions include: Americas, Asia, E
    HQGlobalSubRegion text,  -- Sub-region of a company''s headquarters. Global Sub Regions include: North Ameri
    AlternateOfficeCount integer,  -- Count of alternate offices
    PrimaryContactPBId text,  -- Identifier (PbID) for a specific member of the management team that is designate
    PrimaryContactFirstName text,  -- First name of the primary contact
    PrimaryContactLastName text,  -- Last name of the primary contact
    PrimaryContactMiddle text,  -- Middle name of the primary contact
    PrimaryContactPrefix text,  -- Prefix of the primary contact
    PrimaryContactSuffix text,  -- Suffix of the primary contact
    PrimaryContact text,  -- Full name of the specific member of the management team that is designated as th
    PrimaryContactTitle text,  -- Title of the primary contact
    PrimaryContactEmail text,  -- Email address of the primary contract
    PrimaryContactPhone text,  -- Phone number of the primary contact
    ActiveInvestors integer,  -- Count of investors that currently hold a stake in the company
    FormerInvestors integer,  -- Count of former investors that no longer hold any stake in the company
    Revenue float8,  -- Total amount of money received by a company for the goods or services provided d
    GrossProfit float8,  -- Revenue minus its cost of goods sold. Delivered in millions and USD
    NetIncome float8,  -- The net profit of the company (Revenue - Expenses). Delivered in millions and US
    EnterpriseValue float8,  -- Calculated as market cap plus debt, minority inte Delivered in millions and USD.
    EBITDA float8,  -- Earnings Before Interest, Taxes, Depreciation, and Amortization.''  Represents t
    EBIT float8,  -- Earnings before interest and taxes. Delivered in millions and USD
    NetDebt float8,  -- Overall debt situation by netting the value of debts with cash and other similar
    FiscalPeriod text,  -- Fiscal period the financial figures originated. TTM by default. For private comp
    PeriodEndDate date,  -- The exact date that is given in the financial statements for each period''s end
    FirstFinancingDealID text,  -- Deal ID of the first financing event
    FirstFinancingDate date,  -- Date of the first financing event
    FirstFinancingSize float8,  -- Transaction amount of the first financing event. Amounts in millions
    FirstFinancingSizeStatus text,  -- Gauge on the accuracy of the deal size for the first financing event (Estimated 
    FirstFinancingValuation float8,  -- Value of a company after the first financing event. Amounts in millions
    FirstFinancingValuationStatus text,  -- Gauge on the accuracy of the valuation for a first financing event (Estimated / 
    FirstFinancingDealType text,  -- Identifies and categorizes distinct types of transaction or financing rounds bet
    FirstFinancingDealType2 text,  -- Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type 
    FirstFinancingDealType3 text,  -- Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type 
    FirstFinancingDealClass text,  -- Institutional source of the deal financing (Ex. Private Equity, Venture Capital,
    FirstFinancingDebt text,  -- The debt type of the first debt deal
    FirstFinancingDebtSize float8,  -- Size of the first debt deal. In millions
    FirstFinancingDebtDate date,  -- Date of the first debt deal
    FirstFinancingStatus text,  -- Current status of the first financing event (Ex. complete, in progress, postpone
    LastKnownValuation float8,  -- The last known value of the company after a financing event
    LastKnownValuationDate date,  -- The date of the last known valuation after a financing event
    LastKnownValuationDealType text,  -- The type and source of round financing (Example: Early stage Venture capital or 
    LastFinancingDealID text,  -- Deal ID of the most recent financing event
    LastFinancingDate date,  -- Date of the most recent financing event
    LastFinancingSize float8,  -- Transaction amount of the most recent financing event
    LastFinancingSizeStatus text,  -- Gauge on the accuracy of the deal size for the most recent financing event (Esti
    LastFinancingValuation float8,  -- Value of the company after the most recent financing event
    LastFinancingValuationStatus text,  -- Gauge on the accuracy of the valuation for the most recent financing event (Esti
    LastFinancingDealType text,  -- Identifies and categorizes distinct types of transaction or financing rounds bet
    LastFinancingDealType2 text,  -- Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type 
    LastFinancingDealType3 text,  -- Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type 
    LastFinancingDealClass text,  -- The institutional source of the deal financing (example: Private Equity, Venture
    LastFinancingDebt text,  -- Debt type of the last debt deal
    LastFinancingDebtSize float8,  -- Deal size of the last financing debt deal. In millions
    LastFinancingDebtDate date,  -- Date of the last financing debt deal
    LastFinancingStatus text,  -- Denotes the current status of the most recent financing event (Ex. complete, in 
    FinancingStatusNote text,  -- Summary of the most recent financing event listing key details, including financ
    FacebookProfileURL text,  -- URL to the company''s Facebook profile page
    TwitterProfileURL text,  -- URL to the company''s Twitter profile page
    LinkedInProfileURL text,  -- URL to the company''s LinkedIn profile page
    GrowthRate float8,  -- Average of web and social growth rates. This is measured by the percentage (week
    GrowthRatePercentile integer,  -- Percentile rank of the growth rate compared with the total population
    GrowthRateChange float8,  -- Weekly change of the growth rate compared to the total population. This is a per
    GrowthRatePercentChange float8,  -- Weekly percent change of the growth rate compared to the total population. This 
    WebGrowthRate float8,  -- Weekly percent change measuring traffic of unique visitors to the company''s web
    WebGrowthRatePercentile float8,  -- Percentile rank for SimilarWeb growth rate
    SizeMultiple float8,  -- Average of web and social multiples, measured by the aggregation of all web and 
    SizeMultiplePercentile integer,  -- Percentile rank of the size multiple relative to the total population
    SizeMultipleChange float8,  -- Weekly change of the size multiple compared to the total. Upon request an ''x'' 
    SizeMultiplePercentChange float8,  -- Weekly percent change of the size multiple compared to the total
    WebSizeMultiple float8,  -- Average of SimilarWeb and Majestic SEO size multiples
    WebSizeMultiplePercentile integer,  -- Average of SimilarWeb and Majestic SEO size multiples converted into a percentil
    MarketInformation text,  -- The Company serves major markets domestically and abroad including New York, Chi
    AppMobileReviews integer,  -- Number of iOS app reviews the company''s app has
    AppGrowthRate float8,  -- Growth rate of the company''s app
    AppGrowthPercentile float8,  -- How the company''s app''s growth rate compares across all tracked companies
    AppSizeMultiple float8,  -- Size multiple of the app
    AppSizePercentile integer,  -- How the company''s size multiple compares across all tracked companies
    ProfileDataSource text,  -- This is the data source where PitchBook acquired the data in the company''s prof
    PitchBookProfileLink text,  -- URL that points to the company''s profile on the PitchBook platform
    PitchBookCreatedDate date,  -- Date showing when the company was initially created within the PitchBook databas
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.Company.CompanyID IS 'Primary key for the company. By default the unique PitchBook ID (PBId) will be d';
COMMENT ON COLUMN main.Company.CompanyName IS 'Name of the company';
COMMENT ON COLUMN main.Company.CompanyAlsoKnownAs IS 'Other name(s) the company goes by, comma separated if multiple names exist';
COMMENT ON COLUMN main.Company.CompanyFormerName IS 'Former name(s) of the company';
COMMENT ON COLUMN main.Company.CompanyLegalName IS 'Legal name of the company';
COMMENT ON COLUMN main.Company.Description IS 'Text description of the company''s business';
COMMENT ON COLUMN main.Company.Keywords IS 'Keywords that describe the company''s business; comma separated';
COMMENT ON COLUMN main.Company.CompanyFinancingStatus IS 'Represents the type of investors that are financially backing the company (Backi';
COMMENT ON COLUMN main.Company.CompanyFinancingStatusDate IS 'Date of the most recent financing event';
COMMENT ON COLUMN main.Company.TotalRaised IS 'Net of all capital injected into a company. The calculation resets after majorit';
COMMENT ON COLUMN main.Company.TotalRaisedNativeAmount IS 'Total Raised in native amount. Amount in millions';
COMMENT ON COLUMN main.Company.TotalRaisedNativeCurrency IS 'Native currency for Total Raised financial data';
COMMENT ON COLUMN main.Company.BusinessStatus IS 'Identifies the current stage of business. Values range from startup to profitabl';
COMMENT ON COLUMN main.Company.BusinessStatusDate IS 'Date when updated business status';
COMMENT ON COLUMN main.Company.OwnershipStatus IS 'Summary detailing how the company is held. It is the ownership under which the c';
COMMENT ON COLUMN main.Company.OwnershipStatusDate IS 'Date when updated ownership status';
COMMENT ON COLUMN main.Company.Universe IS 'Represents the category that a company falls into based on the type of investors';
COMMENT ON COLUMN main.Company.Website IS 'Website of the company';
COMMENT ON COLUMN main.Company.Employees IS 'Number of people employed by the company';
COMMENT ON COLUMN main.Company.EmployeeAsOfDate IS 'Date when added number of people employed by the company';
COMMENT ON COLUMN main.Company.DescriptionShort IS 'Short text description of the company''s business';
COMMENT ON COLUMN main.Company.Exchange IS 'Exchange on which the company is registered';
COMMENT ON COLUMN main.Company.Ticker IS 'Symbol used to identify the company on the public market';
COMMENT ON COLUMN main.Company.YearFounded IS 'Year the company was founded';
COMMENT ON COLUMN main.Company.ParentCompany IS 'Name of the entity that has a majority ownership stake in the company';
COMMENT ON COLUMN main.Company.ParentCompanyID IS 'PitchBook ID (PbID) of the organization that has a majority ownership stake in t';
COMMENT ON COLUMN main.Company.TopLevelParent IS 'Name of the entity that is the topmost company within the hierarchy of the entir';
COMMENT ON COLUMN main.Company.TopLevelParentID IS 'PitchBook ID (PbID) of the entity that is the topmost company within the hierarc';
COMMENT ON COLUMN main.Company.CikCode IS 'Central Index Key (CIK) numbers are given to a company by the US Securities and ';
COMMENT ON COLUMN main.Company.MorningstarID IS 'An ID provided by Morningstar that needs to be attached to the corresponding ent';
COMMENT ON COLUMN main.Company.PrimaryIndustrySector IS 'Broad industry category that contains industry groups and codes';
COMMENT ON COLUMN main.Company.PrimaryIndustryGroup IS 'Industry sub-category that provides a more specific classification';
COMMENT ON COLUMN main.Company.PrimaryIndustryCode IS 'Primary industry the company operates in';
COMMENT ON COLUMN main.Company.AllIndustries IS 'Comma-separated list of all industries the company operates in';
COMMENT ON COLUMN main.Company.Verticals IS 'Comma-separated list of all verticals, or classifiers that may span across multi';
COMMENT ON COLUMN main.Company.EmergingSpaces IS 'Emerging spaces tagged to the company';
COMMENT ON COLUMN main.Company.HQLocation IS 'Geographical location of a company''s headquarters. Includes city, state for US-';
COMMENT ON COLUMN main.Company.HQAddressLine1 IS 'Address of the company''s headquarters';
COMMENT ON COLUMN main.Company.HQAddressLine2 IS 'Second line of the headquarters'' address';
COMMENT ON COLUMN main.Company.HQCity IS 'City where the company is headquartered';
COMMENT ON COLUMN main.Company.HQState_Province IS 'State or province where the company is headquartered';
COMMENT ON COLUMN main.Company.HQPostCode IS 'Post code where the company is headquartered';
COMMENT ON COLUMN main.Company.HQCountry IS 'Country where the company is headquartered';
COMMENT ON COLUMN main.Company.HQPhone IS 'Phone number of the company''s headquarters';
COMMENT ON COLUMN main.Company.HQFax IS 'Fax number of the company''s headquarters';
COMMENT ON COLUMN main.Company.HQEmail IS 'Email address for the company''s headquarters';
COMMENT ON COLUMN main.Company.HQGlobalRegion IS 'Global Region of the company''s headquarters. Regions include: Americas, Asia, E';
COMMENT ON COLUMN main.Company.HQGlobalSubRegion IS 'Sub-region of a company''s headquarters. Global Sub Regions include: North Ameri';
COMMENT ON COLUMN main.Company.AlternateOfficeCount IS 'Count of alternate offices';
COMMENT ON COLUMN main.Company.PrimaryContactPBId IS 'Identifier (PbID) for a specific member of the management team that is designate';
COMMENT ON COLUMN main.Company.PrimaryContactFirstName IS 'First name of the primary contact';
COMMENT ON COLUMN main.Company.PrimaryContactLastName IS 'Last name of the primary contact';
COMMENT ON COLUMN main.Company.PrimaryContactMiddle IS 'Middle name of the primary contact';
COMMENT ON COLUMN main.Company.PrimaryContactPrefix IS 'Prefix of the primary contact';
COMMENT ON COLUMN main.Company.PrimaryContactSuffix IS 'Suffix of the primary contact';
COMMENT ON COLUMN main.Company.PrimaryContact IS 'Full name of the specific member of the management team that is designated as th';
COMMENT ON COLUMN main.Company.PrimaryContactTitle IS 'Title of the primary contact';
COMMENT ON COLUMN main.Company.PrimaryContactEmail IS 'Email address of the primary contract';
COMMENT ON COLUMN main.Company.PrimaryContactPhone IS 'Phone number of the primary contact';
COMMENT ON COLUMN main.Company.ActiveInvestors IS 'Count of investors that currently hold a stake in the company';
COMMENT ON COLUMN main.Company.FormerInvestors IS 'Count of former investors that no longer hold any stake in the company';
COMMENT ON COLUMN main.Company.Revenue IS 'Total amount of money received by a company for the goods or services provided d';
COMMENT ON COLUMN main.Company.GrossProfit IS 'Revenue minus its cost of goods sold. Delivered in millions and USD';
COMMENT ON COLUMN main.Company.NetIncome IS 'The net profit of the company (Revenue - Expenses). Delivered in millions and US';
COMMENT ON COLUMN main.Company.EnterpriseValue IS 'Calculated as market cap plus debt, minority inte Delivered in millions and USD.';
COMMENT ON COLUMN main.Company.EBITDA IS 'Earnings Before Interest, Taxes, Depreciation, and Amortization.''  Represents t';
COMMENT ON COLUMN main.Company.EBIT IS 'Earnings before interest and taxes. Delivered in millions and USD';
COMMENT ON COLUMN main.Company.NetDebt IS 'Overall debt situation by netting the value of debts with cash and other similar';
COMMENT ON COLUMN main.Company.FiscalPeriod IS 'Fiscal period the financial figures originated. TTM by default. For private comp';
COMMENT ON COLUMN main.Company.PeriodEndDate IS 'The exact date that is given in the financial statements for each period''s end';
COMMENT ON COLUMN main.Company.FirstFinancingDealID IS 'Deal ID of the first financing event';
COMMENT ON COLUMN main.Company.FirstFinancingDate IS 'Date of the first financing event';
COMMENT ON COLUMN main.Company.FirstFinancingSize IS 'Transaction amount of the first financing event. Amounts in millions';
COMMENT ON COLUMN main.Company.FirstFinancingSizeStatus IS 'Gauge on the accuracy of the deal size for the first financing event (Estimated ';
COMMENT ON COLUMN main.Company.FirstFinancingValuation IS 'Value of a company after the first financing event. Amounts in millions';
COMMENT ON COLUMN main.Company.FirstFinancingValuationStatus IS 'Gauge on the accuracy of the valuation for a first financing event (Estimated / ';
COMMENT ON COLUMN main.Company.FirstFinancingDealType IS 'Identifies and categorizes distinct types of transaction or financing rounds bet';
COMMENT ON COLUMN main.Company.FirstFinancingDealType2 IS 'Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type ';
COMMENT ON COLUMN main.Company.FirstFinancingDealType3 IS 'Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type ';
COMMENT ON COLUMN main.Company.FirstFinancingDealClass IS 'Institutional source of the deal financing (Ex. Private Equity, Venture Capital,';
COMMENT ON COLUMN main.Company.FirstFinancingDebt IS 'The debt type of the first debt deal';
COMMENT ON COLUMN main.Company.FirstFinancingDebtSize IS 'Size of the first debt deal. In millions';
COMMENT ON COLUMN main.Company.FirstFinancingDebtDate IS 'Date of the first debt deal';
COMMENT ON COLUMN main.Company.FirstFinancingStatus IS 'Current status of the first financing event (Ex. complete, in progress, postpone';
COMMENT ON COLUMN main.Company.LastKnownValuation IS 'The last known value of the company after a financing event';
COMMENT ON COLUMN main.Company.LastKnownValuationDate IS 'The date of the last known valuation after a financing event';
COMMENT ON COLUMN main.Company.LastKnownValuationDealType IS 'The type and source of round financing (Example: Early stage Venture capital or ';
COMMENT ON COLUMN main.Company.LastFinancingDealID IS 'Deal ID of the most recent financing event';
COMMENT ON COLUMN main.Company.LastFinancingDate IS 'Date of the most recent financing event';
COMMENT ON COLUMN main.Company.LastFinancingSize IS 'Transaction amount of the most recent financing event';
COMMENT ON COLUMN main.Company.LastFinancingSizeStatus IS 'Gauge on the accuracy of the deal size for the most recent financing event (Esti';
COMMENT ON COLUMN main.Company.LastFinancingValuation IS 'Value of the company after the most recent financing event';
COMMENT ON COLUMN main.Company.LastFinancingValuationStatus IS 'Gauge on the accuracy of the valuation for the most recent financing event (Esti';
COMMENT ON COLUMN main.Company.LastFinancingDealType IS 'Identifies and categorizes distinct types of transaction or financing rounds bet';
COMMENT ON COLUMN main.Company.LastFinancingDealType2 IS 'Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type ';
COMMENT ON COLUMN main.Company.LastFinancingDealType3 IS 'Further categorization of the transaction (e.g. Deal Type: Buyout/LBO Deal Type ';
COMMENT ON COLUMN main.Company.LastFinancingDealClass IS 'The institutional source of the deal financing (example: Private Equity, Venture';
COMMENT ON COLUMN main.Company.LastFinancingDebt IS 'Debt type of the last debt deal';
COMMENT ON COLUMN main.Company.LastFinancingDebtSize IS 'Deal size of the last financing debt deal. In millions';
COMMENT ON COLUMN main.Company.LastFinancingDebtDate IS 'Date of the last financing debt deal';
COMMENT ON COLUMN main.Company.LastFinancingStatus IS 'Denotes the current status of the most recent financing event (Ex. complete, in ';
COMMENT ON COLUMN main.Company.FinancingStatusNote IS 'Summary of the most recent financing event listing key details, including financ';
COMMENT ON COLUMN main.Company.FacebookProfileURL IS 'URL to the company''s Facebook profile page';
COMMENT ON COLUMN main.Company.TwitterProfileURL IS 'URL to the company''s Twitter profile page';
COMMENT ON COLUMN main.Company.LinkedInProfileURL IS 'URL to the company''s LinkedIn profile page';
COMMENT ON COLUMN main.Company.GrowthRate IS 'Average of web and social growth rates. This is measured by the percentage (week';
COMMENT ON COLUMN main.Company.GrowthRatePercentile IS 'Percentile rank of the growth rate compared with the total population';
COMMENT ON COLUMN main.Company.GrowthRateChange IS 'Weekly change of the growth rate compared to the total population. This is a per';
COMMENT ON COLUMN main.Company.GrowthRatePercentChange IS 'Weekly percent change of the growth rate compared to the total population. This ';
COMMENT ON COLUMN main.Company.WebGrowthRate IS 'Weekly percent change measuring traffic of unique visitors to the company''s web';
COMMENT ON COLUMN main.Company.WebGrowthRatePercentile IS 'Percentile rank for SimilarWeb growth rate';
COMMENT ON COLUMN main.Company.SizeMultiple IS 'Average of web and social multiples, measured by the aggregation of all web and ';
COMMENT ON COLUMN main.Company.SizeMultiplePercentile IS 'Percentile rank of the size multiple relative to the total population';
COMMENT ON COLUMN main.Company.SizeMultipleChange IS 'Weekly change of the size multiple compared to the total. Upon request an ''x'' ';
COMMENT ON COLUMN main.Company.SizeMultiplePercentChange IS 'Weekly percent change of the size multiple compared to the total';
COMMENT ON COLUMN main.Company.WebSizeMultiple IS 'Average of SimilarWeb and Majestic SEO size multiples';
COMMENT ON COLUMN main.Company.WebSizeMultiplePercentile IS 'Average of SimilarWeb and Majestic SEO size multiples converted into a percentil';
COMMENT ON COLUMN main.Company.MarketInformation IS 'The Company serves major markets domestically and abroad including New York, Chi';
COMMENT ON COLUMN main.Company.AppMobileReviews IS 'Number of iOS app reviews the company''s app has';
COMMENT ON COLUMN main.Company.AppGrowthRate IS 'Growth rate of the company''s app';
COMMENT ON COLUMN main.Company.AppGrowthPercentile IS 'How the company''s app''s growth rate compares across all tracked companies';
COMMENT ON COLUMN main.Company.AppSizeMultiple IS 'Size multiple of the app';
COMMENT ON COLUMN main.Company.AppSizePercentile IS 'How the company''s size multiple compares across all tracked companies';
COMMENT ON COLUMN main.Company.ProfileDataSource IS 'This is the data source where PitchBook acquired the data in the company''s prof';
COMMENT ON COLUMN main.Company.PitchBookProfileLink IS 'URL that points to the company''s profile on the PitchBook platform';
COMMENT ON COLUMN main.Company.PitchBookCreatedDate IS 'Date showing when the company was initially created within the PitchBook databas';
COMMENT ON COLUMN main.Company.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.Company.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

\COPY main.Company FROM 'data/Company.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

-- Auto-generated from data dictionary for table: LimitedPartner
-- Columns: 108

DROP TABLE IF EXISTS main.LimitedPartner CASCADE;

CREATE TABLE main.LimitedPartner (
    "LimitedPartnerID" text PRIMARY KEY,  -- Primary key for the limited partner. By default the unique PitchBook ID (PbID) w
    "LimitedPartnerName" text,  -- Name of the limited partner
    "LimitedPartnerFormerName" text,  -- Former name(s) of the limited partner
    "LimitedPartnerLegalName" text,  -- Legal name of the limited partner
    "LimitedPartnerAlsoKnownAs" text,  -- Comma separated list of other name(s) the limited partner goes by
    "Description" text,  -- Text description of limited partner''s business
    "LimitedPartnerType" text,  -- Institution type of the limited partner (e.g. corporate pension, economic develo
    "AUM" float8,  -- Amount of capital managed by a limited partner
    "YearFounded" integer,  -- Year the limited partner was founded
    "Website" text,  -- Website of the limited partner
    "SoldSecondaryCommitments" text,  -- Indicates if the limited partner sold secondary commitments
    "BoughtSecondaryCommitments" text,  -- Indicates if the limited partner bough secondary commitments
    "DirectInvestments" integer,  -- Number of direct investments that limited partner has made
    "TopLevelParent" text,  -- Name of the entity that is the topmost entity within the hierarchy of the entire
    "TopLevelParentID" text,  -- PitchBook ID (PBId) of the entity that is the topmost entity within the hierarch
    "HQLocation" text,  -- Geographical location of a limited partner''s main corporate office
    "HQAddressLine1" text,  -- Address of the limited partner''s headquarters
    "HQAddressLine2" text,  -- Second line of the headquarters'' address
    "HQCity" text,  -- City where the limited partner is headquartered
    "HQState_Province" text,  -- State or province where the limited partner is headquartered
    "HQPostCode" text,  -- Post code where the limited partner is headquartered
    "HQCountry" text,  -- Country where the limited partner is headquartered
    "HQPhone" text,  -- Phone number of the limited partner''s headquarters
    "HQFax" text,  -- Fax number of the limited partner''s headquarters
    "HQEmail" text,  -- Email address for the limited partner''s headquarters
    "HQGlobalRegion" text,  -- Global Regions include: United States, Canada, Europe, Americas, Asia, Africa, M
    "HQGlobalSubRegion" text,  -- Sub-region of a limited partner''s headquarters. Global Sub Regions include: Nor
    "PrimaryContactPBId" text,  -- PitchBook ID (PbID) for a specific member of the management team that is designa
    "PrimaryContactFirstName" text,  -- First name of the primary contact
    "PrimaryContactLastName" text,  -- Last name of the primary contact
    "PrimaryContactMiddle" text,  -- Middle name of the primary contact
    "PrimaryContactPrefix" text,  -- Prefix of the primary contact
    "PrimaryContactSuffix" text,  -- Suffix of the primary contact
    "PrimaryContact" text,  -- Full name of  the specific member of the management team that is designated as t
    "PrimaryContactTitle" text,  -- Title of the primary contact
    "PrimaryContactEmail" text,  -- Email address for the limited partner''s headquarters
    "PrimaryContactPhone" text,  -- Phone number of the primary contact
    "TotalCommitments" integer,  -- Total number of commitments made by the limited partner. This count includes all
    "TotalActiveCommitments" integer,  -- Total number of active commitments that a limited partner has ever committed cap
    "TotalCommitmentsInDebtFunds" integer,  -- Total number of debt funds to which the limited partner has committed capital
    "TotalCommitmentsInPEFunds" integer,  -- Total number of PE funds to which the limited partner has committed capital
    "TotalCommitmentsInREFunds" integer,  -- Total number of real estate funds to which the limited partner has committed cap
    "TotalCommitmentsInVCFunds" integer,  -- Total number of VC funds to which the limited partner has committed capital
    "TotalCommitmentsInFOFsAnd2nd" integer,  -- Total number of FoFs and 2nd to which the limited partner has committed capital
    "TotalCommitmentsInInfrastructure" integer,  -- Total number of infrastructure funds to which the limited partner has committed 
    "TotalCommitmentsInEnergyFunds" integer,  -- Total number of energy funds to which the limited partner has committed capital
    "TotalCommitmentsInOtherFunds" integer,  -- Total number of other fund types to which the limited partner has committed capi
    "OpenToFirstTimeFunds" text,  -- Whether or not the limited partner is open to committing to first-time funds
    "AllocationToAlternativeInvestments" float8,  -- Amount of capital that the limited partner allocates to alternative investments.
    "AllocationToAlternativeInvestmentsPercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to al
    "PrivateEquity" float8,  -- Amount of capital that the limited partner allocates to private equity assets, w
    "PrivateEquityPercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to pr
    "RealEstate" float8,  -- Amount of capital that the limited partner allocates to real estate assets, such
    "RealEstatePercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to re
    "SpecialOpportunities" float8,  -- The amount of capital that the limited partner allocates to special opportunity 
    "SpecialOpportunitiesPercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to sp
    "HedgeFunds" float8,  -- The amount of capital that the limited partner allocates to hedge fund investmen
    "HedgeFundsPercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to he
    "Equities" float8,  -- Amount of capital that the limited partner allocates to equities (publicly trade
    "EquitiesPercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to pu
    "FixedIncome" float8,  -- Amount of capital that the limited partner allocates to fixed income assets, suc
    "FixedIncomePercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to fi
    "Cash" float8,  -- Amount of capital that the limited partner allocates to cash holdings
    "CashPercent" float8,  -- Percentage of its capital that the limited partner currently has allocated to ca
    "PolicyDescription" text,  -- The limited partner''s guiding investment strategy policy
    "PreferredCommitmentSize" text,  -- The limited partner''s preferred commitment size
    "PreferredCommitmentSizeMin" float8,  -- The minimum limited partner''s preferred commitment size
    "PreferredCommitmentSizeMax" float8,  -- The maximum limited partner''s preferred commitment size
    "PreferredDirectInvestmentSize" text,  -- The limited partner''s preferred direct investment size. This is a range
    "PreferredDirectInvestmentSizeMin" float8,  -- The limited partner''s minimum preferred direct investment size. This is a range
    "PreferredDirectInvestmentSizeMax" float8,  -- The limited partner''s maximum preferred direct investment size. This is a range
    "PreferredGeography" text,  -- Geographic regions that the limited partner will target for its investments
    "PreferredFundType" text,  -- The fund type(s) that the limited partner prefers to commit to
    "TargetAlternativesMin" float8,  -- Limited partner''s minimum desired allocation to alternative investments
    "TargetAlternativesPercentMin" float8,  -- Limited partner''s minimum desired ratio of allocation to alternative investment
    "TargetAlternativesMax" float8,  -- Limited partner''s maximum desired allocation to alternative investments
    "TargetAlternativesPercentMax" float8,  -- Limited partner''s maximum desired ratio of allocation to alternative investment
    "TargetPrivateEquityMin" float8,  -- Limited partner''s maximum desired allocation to private equity investments
    "TargetPrivateEquityPercentMin" float8,  -- Limited partner''s minimum desired ratio of allocation to private equity investm
    "TargetPrivateEquityMax" float8,  -- Limited partner''s maximum desired allocation to private equity investments
    "TargetPrivateEquityPercentMax" float8,  -- Limited partner''s maximum desired ratio of allocation to private equity investm
    "TargetRealEstateMin" float8,  -- Limited partner''s minimum desired allocation to real estate investments
    "TargetRealEstatePercentMin" float8,  -- Limited partner''s minimum desired ratio of allocation to real estate investment
    "TargetRealEstateMax" float8,  -- Limited partner''s maximum desired allocation to real estate investments
    "TargetRealEstatePercentMax" float8,  -- Limited partner''s maximum desired ratio of allocation to real estate investment
    "TargetSpecialOpportunitiesMin" float8,  -- Limited partner''s minimum desired allocation to special opportunity investments
    "TargetSpecialOpportunitiesPercentMin" float8,  -- Limited partner''s minimum desired ratio of allocation to special opportunity in
    "TargetSpecialOpportunitiesMax" float8,  -- Limited partner''s maximum desired allocation to special opportunity investments
    "TargetSpecialOpportunitiesPercentMax" float8,  -- Limited partner''s maximum desired ratio of allocation to special opportunity in
    "TargetHedgeFundsMin" float8,  -- Limited partner''s minimum desired allocation to hedge fund investments
    "TargetHedgeFundsPercentMin" float8,  -- Limited partner''s minimum desired ratio of allocation to hedge fund investments
    "TargetHedgeFundsMax" float8,  -- Limited partner''s maximum desired allocation to private equity investments
    "TargetHedgeFundsPercentMax" float8,  -- Limited partner''s maximum desired ratio of allocation to private equity investm
    "TargetEquitiesMin" float8,  -- Limited partner''s minimum desired allocation to private equity investments
    "TargetEquitiesPercentMin" float8,  -- Limited partner''s minimum desired allocation to publicly traded equities. This 
    "TargetEquitiesMax" float8,  -- Limited partner''s minimum desired ratio of allocation to publicly traded equiti
    "TargetEquitiesPercentMax" float8,  -- Limited partner''s maximum desired ratio of allocation to publicly traded equiti
    "TargetFixedIncomeMin" float8,  -- Limited partner''s minimum desired allocation to fixed income assets
    "TargetFixedIncomePercentMin" float8,  -- Limited partner''s minimum desired ratio of allocation to fixed income assets re
    "TargetFixedIncomeMax" float8,  -- Limited partner''s maximum desired ratio of allocation to fixed income assets re
    "TargetFixedIncomePercentMax" float8,  -- Limited partner''s maximum desired ratio of allocation to fixed income assets re
    "TargetCashMin" float8,  -- Limited partner''s minimum desired allocation to cash holdings
    "TargetCashPercentMin" float8,  -- Limited partner''s minimum desired ratio of cash holdings relative to the rest o
    "TargetCashMax" float8,  -- Limited partner''s maximum desired allocation to cash holdings
    "TargetCashPercentMax" float8,  -- Limited partner''s maximum desired ratio of cash holdings relative to the rest o
    "MorningstarID" text,  -- An ID provided by Morningstar that needs to be attached to the corresponding ent
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.LimitedPartner."LimitedPartnerID" IS 'Primary key for the limited partner. By default the unique PitchBook ID (PbID) w';
COMMENT ON COLUMN main.LimitedPartner."LimitedPartnerName" IS 'Name of the limited partner';
COMMENT ON COLUMN main.LimitedPartner."LimitedPartnerFormerName" IS 'Former name(s) of the limited partner';
COMMENT ON COLUMN main.LimitedPartner."LimitedPartnerLegalName" IS 'Legal name of the limited partner';
COMMENT ON COLUMN main.LimitedPartner."LimitedPartnerAlsoKnownAs" IS 'Comma separated list of other name(s) the limited partner goes by';
COMMENT ON COLUMN main.LimitedPartner."Description" IS 'Text description of limited partner''s business';
COMMENT ON COLUMN main.LimitedPartner."LimitedPartnerType" IS 'Institution type of the limited partner (e.g. corporate pension, economic develo';
COMMENT ON COLUMN main.LimitedPartner."AUM" IS 'Amount of capital managed by a limited partner';
COMMENT ON COLUMN main.LimitedPartner."YearFounded" IS 'Year the limited partner was founded';
COMMENT ON COLUMN main.LimitedPartner."Website" IS 'Website of the limited partner';
COMMENT ON COLUMN main.LimitedPartner."SoldSecondaryCommitments" IS 'Indicates if the limited partner sold secondary commitments';
COMMENT ON COLUMN main.LimitedPartner."BoughtSecondaryCommitments" IS 'Indicates if the limited partner bough secondary commitments';
COMMENT ON COLUMN main.LimitedPartner."DirectInvestments" IS 'Number of direct investments that limited partner has made';
COMMENT ON COLUMN main.LimitedPartner."TopLevelParent" IS 'Name of the entity that is the topmost entity within the hierarchy of the entire';
COMMENT ON COLUMN main.LimitedPartner."TopLevelParentID" IS 'PitchBook ID (PBId) of the entity that is the topmost entity within the hierarch';
COMMENT ON COLUMN main.LimitedPartner."HQLocation" IS 'Geographical location of a limited partner''s main corporate office';
COMMENT ON COLUMN main.LimitedPartner."HQAddressLine1" IS 'Address of the limited partner''s headquarters';
COMMENT ON COLUMN main.LimitedPartner."HQAddressLine2" IS 'Second line of the headquarters'' address';
COMMENT ON COLUMN main.LimitedPartner."HQCity" IS 'City where the limited partner is headquartered';
COMMENT ON COLUMN main.LimitedPartner."HQState_Province" IS 'State or province where the limited partner is headquartered';
COMMENT ON COLUMN main.LimitedPartner."HQPostCode" IS 'Post code where the limited partner is headquartered';
COMMENT ON COLUMN main.LimitedPartner."HQCountry" IS 'Country where the limited partner is headquartered';
COMMENT ON COLUMN main.LimitedPartner."HQPhone" IS 'Phone number of the limited partner''s headquarters';
COMMENT ON COLUMN main.LimitedPartner."HQFax" IS 'Fax number of the limited partner''s headquarters';
COMMENT ON COLUMN main.LimitedPartner."HQEmail" IS 'Email address for the limited partner''s headquarters';
COMMENT ON COLUMN main.LimitedPartner."HQGlobalRegion" IS 'Global Regions include: United States, Canada, Europe, Americas, Asia, Africa, M';
COMMENT ON COLUMN main.LimitedPartner."HQGlobalSubRegion" IS 'Sub-region of a limited partner''s headquarters. Global Sub Regions include: Nor';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactPBId" IS 'PitchBook ID (PbID) for a specific member of the management team that is designa';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactFirstName" IS 'First name of the primary contact';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactLastName" IS 'Last name of the primary contact';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactMiddle" IS 'Middle name of the primary contact';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactPrefix" IS 'Prefix of the primary contact';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactSuffix" IS 'Suffix of the primary contact';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContact" IS 'Full name of  the specific member of the management team that is designated as t';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactTitle" IS 'Title of the primary contact';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactEmail" IS 'Email address for the limited partner''s headquarters';
COMMENT ON COLUMN main.LimitedPartner."PrimaryContactPhone" IS 'Phone number of the primary contact';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitments" IS 'Total number of commitments made by the limited partner. This count includes all';
COMMENT ON COLUMN main.LimitedPartner."TotalActiveCommitments" IS 'Total number of active commitments that a limited partner has ever committed cap';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInDebtFunds" IS 'Total number of debt funds to which the limited partner has committed capital';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInPEFunds" IS 'Total number of PE funds to which the limited partner has committed capital';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInREFunds" IS 'Total number of real estate funds to which the limited partner has committed cap';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInVCFunds" IS 'Total number of VC funds to which the limited partner has committed capital';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInFOFsAnd2nd" IS 'Total number of FoFs and 2nd to which the limited partner has committed capital';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInInfrastructure" IS 'Total number of infrastructure funds to which the limited partner has committed ';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInEnergyFunds" IS 'Total number of energy funds to which the limited partner has committed capital';
COMMENT ON COLUMN main.LimitedPartner."TotalCommitmentsInOtherFunds" IS 'Total number of other fund types to which the limited partner has committed capi';
COMMENT ON COLUMN main.LimitedPartner."OpenToFirstTimeFunds" IS 'Whether or not the limited partner is open to committing to first-time funds';
COMMENT ON COLUMN main.LimitedPartner."AllocationToAlternativeInvestments" IS 'Amount of capital that the limited partner allocates to alternative investments.';
COMMENT ON COLUMN main.LimitedPartner."AllocationToAlternativeInvestmentsPercent" IS 'Percentage of its capital that the limited partner currently has allocated to al';
COMMENT ON COLUMN main.LimitedPartner."PrivateEquity" IS 'Amount of capital that the limited partner allocates to private equity assets, w';
COMMENT ON COLUMN main.LimitedPartner."PrivateEquityPercent" IS 'Percentage of its capital that the limited partner currently has allocated to pr';
COMMENT ON COLUMN main.LimitedPartner."RealEstate" IS 'Amount of capital that the limited partner allocates to real estate assets, such';
COMMENT ON COLUMN main.LimitedPartner."RealEstatePercent" IS 'Percentage of its capital that the limited partner currently has allocated to re';
COMMENT ON COLUMN main.LimitedPartner."SpecialOpportunities" IS 'The amount of capital that the limited partner allocates to special opportunity ';
COMMENT ON COLUMN main.LimitedPartner."SpecialOpportunitiesPercent" IS 'Percentage of its capital that the limited partner currently has allocated to sp';
COMMENT ON COLUMN main.LimitedPartner."HedgeFunds" IS 'The amount of capital that the limited partner allocates to hedge fund investmen';
COMMENT ON COLUMN main.LimitedPartner."HedgeFundsPercent" IS 'Percentage of its capital that the limited partner currently has allocated to he';
COMMENT ON COLUMN main.LimitedPartner."Equities" IS 'Amount of capital that the limited partner allocates to equities (publicly trade';
COMMENT ON COLUMN main.LimitedPartner."EquitiesPercent" IS 'Percentage of its capital that the limited partner currently has allocated to pu';
COMMENT ON COLUMN main.LimitedPartner."FixedIncome" IS 'Amount of capital that the limited partner allocates to fixed income assets, suc';
COMMENT ON COLUMN main.LimitedPartner."FixedIncomePercent" IS 'Percentage of its capital that the limited partner currently has allocated to fi';
COMMENT ON COLUMN main.LimitedPartner."Cash" IS 'Amount of capital that the limited partner allocates to cash holdings';
COMMENT ON COLUMN main.LimitedPartner."CashPercent" IS 'Percentage of its capital that the limited partner currently has allocated to ca';
COMMENT ON COLUMN main.LimitedPartner."PolicyDescription" IS 'The limited partner''s guiding investment strategy policy';
COMMENT ON COLUMN main.LimitedPartner."PreferredCommitmentSize" IS 'The limited partner''s preferred commitment size';
COMMENT ON COLUMN main.LimitedPartner."PreferredCommitmentSizeMin" IS 'The minimum limited partner''s preferred commitment size';
COMMENT ON COLUMN main.LimitedPartner."PreferredCommitmentSizeMax" IS 'The maximum limited partner''s preferred commitment size';
COMMENT ON COLUMN main.LimitedPartner."PreferredDirectInvestmentSize" IS 'The limited partner''s preferred direct investment size. This is a range';
COMMENT ON COLUMN main.LimitedPartner."PreferredDirectInvestmentSizeMin" IS 'The limited partner''s minimum preferred direct investment size. This is a range';
COMMENT ON COLUMN main.LimitedPartner."PreferredDirectInvestmentSizeMax" IS 'The limited partner''s maximum preferred direct investment size. This is a range';
COMMENT ON COLUMN main.LimitedPartner."PreferredGeography" IS 'Geographic regions that the limited partner will target for its investments';
COMMENT ON COLUMN main.LimitedPartner."PreferredFundType" IS 'The fund type(s) that the limited partner prefers to commit to';
COMMENT ON COLUMN main.LimitedPartner."TargetAlternativesMin" IS 'Limited partner''s minimum desired allocation to alternative investments';
COMMENT ON COLUMN main.LimitedPartner."TargetAlternativesPercentMin" IS 'Limited partner''s minimum desired ratio of allocation to alternative investment';
COMMENT ON COLUMN main.LimitedPartner."TargetAlternativesMax" IS 'Limited partner''s maximum desired allocation to alternative investments';
COMMENT ON COLUMN main.LimitedPartner."TargetAlternativesPercentMax" IS 'Limited partner''s maximum desired ratio of allocation to alternative investment';
COMMENT ON COLUMN main.LimitedPartner."TargetPrivateEquityMin" IS 'Limited partner''s maximum desired allocation to private equity investments';
COMMENT ON COLUMN main.LimitedPartner."TargetPrivateEquityPercentMin" IS 'Limited partner''s minimum desired ratio of allocation to private equity investm';
COMMENT ON COLUMN main.LimitedPartner."TargetPrivateEquityMax" IS 'Limited partner''s maximum desired allocation to private equity investments';
COMMENT ON COLUMN main.LimitedPartner."TargetPrivateEquityPercentMax" IS 'Limited partner''s maximum desired ratio of allocation to private equity investm';
COMMENT ON COLUMN main.LimitedPartner."TargetRealEstateMin" IS 'Limited partner''s minimum desired allocation to real estate investments';
COMMENT ON COLUMN main.LimitedPartner."TargetRealEstatePercentMin" IS 'Limited partner''s minimum desired ratio of allocation to real estate investment';
COMMENT ON COLUMN main.LimitedPartner."TargetRealEstateMax" IS 'Limited partner''s maximum desired allocation to real estate investments';
COMMENT ON COLUMN main.LimitedPartner."TargetRealEstatePercentMax" IS 'Limited partner''s maximum desired ratio of allocation to real estate investment';
COMMENT ON COLUMN main.LimitedPartner."TargetSpecialOpportunitiesMin" IS 'Limited partner''s minimum desired allocation to special opportunity investments';
COMMENT ON COLUMN main.LimitedPartner."TargetSpecialOpportunitiesPercentMin" IS 'Limited partner''s minimum desired ratio of allocation to special opportunity in';
COMMENT ON COLUMN main.LimitedPartner."TargetSpecialOpportunitiesMax" IS 'Limited partner''s maximum desired allocation to special opportunity investments';
COMMENT ON COLUMN main.LimitedPartner."TargetSpecialOpportunitiesPercentMax" IS 'Limited partner''s maximum desired ratio of allocation to special opportunity in';
COMMENT ON COLUMN main.LimitedPartner."TargetHedgeFundsMin" IS 'Limited partner''s minimum desired allocation to hedge fund investments';
COMMENT ON COLUMN main.LimitedPartner."TargetHedgeFundsPercentMin" IS 'Limited partner''s minimum desired ratio of allocation to hedge fund investments';
COMMENT ON COLUMN main.LimitedPartner."TargetHedgeFundsMax" IS 'Limited partner''s maximum desired allocation to private equity investments';
COMMENT ON COLUMN main.LimitedPartner."TargetHedgeFundsPercentMax" IS 'Limited partner''s maximum desired ratio of allocation to private equity investm';
COMMENT ON COLUMN main.LimitedPartner."TargetEquitiesMin" IS 'Limited partner''s minimum desired allocation to private equity investments';
COMMENT ON COLUMN main.LimitedPartner."TargetEquitiesPercentMin" IS 'Limited partner''s minimum desired allocation to publicly traded equities. This ';
COMMENT ON COLUMN main.LimitedPartner."TargetEquitiesMax" IS 'Limited partner''s minimum desired ratio of allocation to publicly traded equiti';
COMMENT ON COLUMN main.LimitedPartner."TargetEquitiesPercentMax" IS 'Limited partner''s maximum desired ratio of allocation to publicly traded equiti';
COMMENT ON COLUMN main.LimitedPartner."TargetFixedIncomeMin" IS 'Limited partner''s minimum desired allocation to fixed income assets';
COMMENT ON COLUMN main.LimitedPartner."TargetFixedIncomePercentMin" IS 'Limited partner''s minimum desired ratio of allocation to fixed income assets re';
COMMENT ON COLUMN main.LimitedPartner."TargetFixedIncomeMax" IS 'Limited partner''s maximum desired ratio of allocation to fixed income assets re';
COMMENT ON COLUMN main.LimitedPartner."TargetFixedIncomePercentMax" IS 'Limited partner''s maximum desired ratio of allocation to fixed income assets re';
COMMENT ON COLUMN main.LimitedPartner."TargetCashMin" IS 'Limited partner''s minimum desired allocation to cash holdings';
COMMENT ON COLUMN main.LimitedPartner."TargetCashPercentMin" IS 'Limited partner''s minimum desired ratio of cash holdings relative to the rest o';
COMMENT ON COLUMN main.LimitedPartner."TargetCashMax" IS 'Limited partner''s maximum desired allocation to cash holdings';
COMMENT ON COLUMN main.LimitedPartner."TargetCashPercentMax" IS 'Limited partner''s maximum desired ratio of cash holdings relative to the rest o';
COMMENT ON COLUMN main.LimitedPartner."MorningstarID" IS 'An ID provided by Morningstar that needs to be attached to the corresponding ent';
COMMENT ON COLUMN main.LimitedPartner."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.LimitedPartner."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

\COPY main.LimitedPartner FROM 'data/LimitedPartner.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

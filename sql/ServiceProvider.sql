-- Auto-generated from data dictionary for table: ServiceProvider
-- Columns: 53

DROP TABLE IF EXISTS main.ServiceProvider CASCADE;

CREATE TABLE main.ServiceProvider (
    ServiceProviderID text PRIMARY KEY,  -- Primary key for the service provider. By default the unique PitchBook ID (PbID) 
    ServiceProviderName text,  -- Name of the service provider
    ServiceProviderFormerName text,  -- Comma separated list of former name(s) of the service provider
    ServiceProviderLegalName text,  -- Legal name of the service provider
    ServiceProviderAlsoKnownAs text,  -- Comma separated list of other name(s) the service provider goes by
    Employees integer,  -- Number of people employed by the service provider
    Description text,  -- Text description of service provider''s business
    Website text,  -- Website of the service provider
    ParentCompany text,  -- Name of the organization that has a majority ownership stake in the service prov
    PrimaryServiceProviderType text,  -- Primary type of service provided (e.g. Lender, law firm, financing advisory)
    OtherServiceProviderTypes text,  -- Comma separated list of other types of service provided
    TopLevelParent text,  -- Name of the entity that is the topmost entity within the hierarchy of the entire
    TopLevelParentID text,  -- PitchBook ID (PBId) of the entity that is the topmost entity within the hierarch
    ServicedCompanies integer,  -- Count of unique companies the service provider represented through providing eit
    ServicedDeals integer,  -- Count of unique deals where the service provider represented a company receiving
    ServicedInvestors integer,  -- Count of unique investors the service provider represented
    ServicedFunds integer,  -- Count of the unique funds the service provider represented
    ServicedLimitedPartners integer,  -- Count of the unique limited partners the service provider represented
    HQLocation text,  -- Geographical location of a service provider''s headquarters
    HQAddressLine1 text,  -- Address of the service provider''s headquarters
    HQAddressLine2 text,  -- Second line of the address
    HQCity text,  -- City where the service provider is headquartered
    HQState_Province text,  -- State or province where the service provider is headquartered
    HQPostCode text,  -- Post code where the service provider is headquartered
    HQCountry text,  -- Country where the service provider is headquartered
    HQPhone text,  -- Phone number of the service provider''s headquarters
    HQFax text,  -- Fax number of the service provider''s headquarters
    HQEmail text,  -- Email address for the service provider''s headquarters
    HQGlobalRegion text,  -- Global Regions include: United States, Canada, Europe, Americas, Asia, Africa, M
    HQGlobalSubRegion text,  -- Sub-region of a service provider''s headquarters. Global Sub Regions include: No
    PrimaryContactPBId text,  -- PitchBook ID (PbID) for a specific member of the management team that is designa
    PrimaryContactFirstName text,  -- First name of the primary contact
    PrimaryContactLastName text,  -- Last name of the primary contact
    PrimaryContactMiddle text,  -- Middle name of the primary contact
    PrimaryContactPrefix text,  -- Prefix of the primary contact
    PrimaryContactSuffix text,  -- Suffix of the primary contact
    PrimaryContact text,  -- Full name of  the specific member of the management team that is designated as t
    PrimaryContactTitle text,  -- Title of the primary contact
    PrimaryContactEmail text,  -- Email address for the service provider''s headquarters
    PrimaryContactPhone text,  -- Phone number of the primary contact
    NumberOfFundsOpen integer,  -- Count of the total # funds opened by service providers that raise debt funds
    NumberOfFundsClosed integer,  -- Count of the total # funds closed by service providers that raise debt funds
    NumberOfFundsClosedInTheLast6Months integer,  -- Count of the # funds closed by service providers that raise debt funds in the la
    NumberOfFundsClosedInTheLast12Months integer,  -- Count of the # funds closed by service providers that raise debt funds in the la
    NumberOfFundsClosedInTheLast2Years integer,  -- Count of the # funds closed by service providers that raise debt funds in the la
    NumberOfFundsClosedInTheLast5Years integer,  -- Count of the # funds closed by the service providers that raise debt funds in th
    MinFundSize float8,  -- Indicates the minimum fund size (corresponding currency, in millions) that the s
    MaxFundSize float8,  -- Indicates the maximum fund size (corresponding currency, in millions) that the s
    MedianFundSize float8,  -- Indicates the median fund size (corresponding currency, in millions) that the se
    PitchBookProfileLink text,  -- URL of the PitchBook profile of the service provider
    MorningstarID text,  -- An ID provided by Morningstar that needs to be attached to the corresponding ent
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.ServiceProvider.ServiceProviderID IS 'Primary key for the service provider. By default the unique PitchBook ID (PbID) ';
COMMENT ON COLUMN main.ServiceProvider.ServiceProviderName IS 'Name of the service provider';
COMMENT ON COLUMN main.ServiceProvider.ServiceProviderFormerName IS 'Comma separated list of former name(s) of the service provider';
COMMENT ON COLUMN main.ServiceProvider.ServiceProviderLegalName IS 'Legal name of the service provider';
COMMENT ON COLUMN main.ServiceProvider.ServiceProviderAlsoKnownAs IS 'Comma separated list of other name(s) the service provider goes by';
COMMENT ON COLUMN main.ServiceProvider.Employees IS 'Number of people employed by the service provider';
COMMENT ON COLUMN main.ServiceProvider.Description IS 'Text description of service provider''s business';
COMMENT ON COLUMN main.ServiceProvider.Website IS 'Website of the service provider';
COMMENT ON COLUMN main.ServiceProvider.ParentCompany IS 'Name of the organization that has a majority ownership stake in the service prov';
COMMENT ON COLUMN main.ServiceProvider.PrimaryServiceProviderType IS 'Primary type of service provided (e.g. Lender, law firm, financing advisory)';
COMMENT ON COLUMN main.ServiceProvider.OtherServiceProviderTypes IS 'Comma separated list of other types of service provided';
COMMENT ON COLUMN main.ServiceProvider.TopLevelParent IS 'Name of the entity that is the topmost entity within the hierarchy of the entire';
COMMENT ON COLUMN main.ServiceProvider.TopLevelParentID IS 'PitchBook ID (PBId) of the entity that is the topmost entity within the hierarch';
COMMENT ON COLUMN main.ServiceProvider.ServicedCompanies IS 'Count of unique companies the service provider represented through providing eit';
COMMENT ON COLUMN main.ServiceProvider.ServicedDeals IS 'Count of unique deals where the service provider represented a company receiving';
COMMENT ON COLUMN main.ServiceProvider.ServicedInvestors IS 'Count of unique investors the service provider represented';
COMMENT ON COLUMN main.ServiceProvider.ServicedFunds IS 'Count of the unique funds the service provider represented';
COMMENT ON COLUMN main.ServiceProvider.ServicedLimitedPartners IS 'Count of the unique limited partners the service provider represented';
COMMENT ON COLUMN main.ServiceProvider.HQLocation IS 'Geographical location of a service provider''s headquarters';
COMMENT ON COLUMN main.ServiceProvider.HQAddressLine1 IS 'Address of the service provider''s headquarters';
COMMENT ON COLUMN main.ServiceProvider.HQAddressLine2 IS 'Second line of the address';
COMMENT ON COLUMN main.ServiceProvider.HQCity IS 'City where the service provider is headquartered';
COMMENT ON COLUMN main.ServiceProvider.HQState_Province IS 'State or province where the service provider is headquartered';
COMMENT ON COLUMN main.ServiceProvider.HQPostCode IS 'Post code where the service provider is headquartered';
COMMENT ON COLUMN main.ServiceProvider.HQCountry IS 'Country where the service provider is headquartered';
COMMENT ON COLUMN main.ServiceProvider.HQPhone IS 'Phone number of the service provider''s headquarters';
COMMENT ON COLUMN main.ServiceProvider.HQFax IS 'Fax number of the service provider''s headquarters';
COMMENT ON COLUMN main.ServiceProvider.HQEmail IS 'Email address for the service provider''s headquarters';
COMMENT ON COLUMN main.ServiceProvider.HQGlobalRegion IS 'Global Regions include: United States, Canada, Europe, Americas, Asia, Africa, M';
COMMENT ON COLUMN main.ServiceProvider.HQGlobalSubRegion IS 'Sub-region of a service provider''s headquarters. Global Sub Regions include: No';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactPBId IS 'PitchBook ID (PbID) for a specific member of the management team that is designa';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactFirstName IS 'First name of the primary contact';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactLastName IS 'Last name of the primary contact';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactMiddle IS 'Middle name of the primary contact';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactPrefix IS 'Prefix of the primary contact';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactSuffix IS 'Suffix of the primary contact';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContact IS 'Full name of  the specific member of the management team that is designated as t';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactTitle IS 'Title of the primary contact';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactEmail IS 'Email address for the service provider''s headquarters';
COMMENT ON COLUMN main.ServiceProvider.PrimaryContactPhone IS 'Phone number of the primary contact';
COMMENT ON COLUMN main.ServiceProvider.NumberOfFundsOpen IS 'Count of the total # funds opened by service providers that raise debt funds';
COMMENT ON COLUMN main.ServiceProvider.NumberOfFundsClosed IS 'Count of the total # funds closed by service providers that raise debt funds';
COMMENT ON COLUMN main.ServiceProvider.NumberOfFundsClosedInTheLast6Months IS 'Count of the # funds closed by service providers that raise debt funds in the la';
COMMENT ON COLUMN main.ServiceProvider.NumberOfFundsClosedInTheLast12Months IS 'Count of the # funds closed by service providers that raise debt funds in the la';
COMMENT ON COLUMN main.ServiceProvider.NumberOfFundsClosedInTheLast2Years IS 'Count of the # funds closed by service providers that raise debt funds in the la';
COMMENT ON COLUMN main.ServiceProvider.NumberOfFundsClosedInTheLast5Years IS 'Count of the # funds closed by the service providers that raise debt funds in th';
COMMENT ON COLUMN main.ServiceProvider.MinFundSize IS 'Indicates the minimum fund size (corresponding currency, in millions) that the s';
COMMENT ON COLUMN main.ServiceProvider.MaxFundSize IS 'Indicates the maximum fund size (corresponding currency, in millions) that the s';
COMMENT ON COLUMN main.ServiceProvider.MedianFundSize IS 'Indicates the median fund size (corresponding currency, in millions) that the se';
COMMENT ON COLUMN main.ServiceProvider.PitchBookProfileLink IS 'URL of the PitchBook profile of the service provider';
COMMENT ON COLUMN main.ServiceProvider.MorningstarID IS 'An ID provided by Morningstar that needs to be attached to the corresponding ent';
COMMENT ON COLUMN main.ServiceProvider.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.ServiceProvider.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

\COPY main.ServiceProvider FROM 'data/ServiceProvider.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

-- Auto-generated from data dictionary for table: Person
-- Columns: 44

DROP TABLE IF EXISTS main.Person CASCADE;

CREATE TABLE main.Person (
    "PersonID" text,  -- Primary key for the person. By default the unique PitchBook ID (PbID) will be de
    "FullName" text,  -- Full name of the person
    "LastName" text,  -- Last name of the person
    "FirstName" text,  -- First name of the person
    "MiddleName" text,  -- Middle name of the person
    "Gender" text,  -- Gender of the person
    "Prefix" text,  -- Prefix of the person
    "University_Institution" text,  -- University the person attended
    "PrimaryCompanyID" text,  -- Unique identifier for the primary company the person is employed at
    "PrimaryCompany" text,  -- Name of the primary company the person is employed at
    "PrimaryCompanyType" text,  -- Type of company the person is primarily employed at
    "PrimaryCompanyIndustrySector" text,  -- Broad industry category that contains industry groups and codes for the primary 
    "PrimaryCompanyIndustryGroup" text,  -- Industry sub-category that provides a more specific classification for the prima
    "PrimaryCompanyIndustryCode" text,  -- Primary industry the company operates in for the primary company the person is e
    "PrimaryCompanyVerticals" text,  -- Comma-separated list of all verticals, or classifiers that may span across multi
    "PrimaryCompanyWebsite" text,  -- Website of the company the person is primarily employed at
    "PrimaryPosition" text,  -- Primary position of the person
    "PrimaryPositionLevel" text,  -- Primary position level of the person
    "Biography" text,  -- Biography of the person
    "Phone" text,  -- Primary phone of the person
    "MobilePhone" text,  -- Mobile phone of the person
    "Fax" text,  -- Primary fax of the person
    "Email" text,  -- Primary email of the person
    "LinkedInProfileURL" text,  -- LinkedIn Profile URL of the person
    "CurrentPositionsCount" integer,  -- Aggregate count of current positions
    "FormerPositionsCount" integer,  -- Aggregate count of former positions
    "CurrentBoardSeatsCount" integer,  -- Aggregate count of current board seats
    "FormerBoardSeatsCount" integer,  -- Aggregate count of former board seats
    "CurrentAdvisoryRolesCount" integer,  -- Aggregate count of current advisory roles
    "FormerAdvisoryRolesCount" integer,  -- Aggregate count of former advisory roles
    "AffiliatedDealsCount" integer,  -- Aggregate count of affiliated deals
    "NumberOfAffiliatedFunds" integer,  -- Aggregate count of affiliated funds
    "RolesCount" integer,  -- Aggregate count of total affiliated deals + current positions + current board se
    "Location" text,  -- City and country of the person''s primary local office of where they are based
    "AddressLine1" text,  -- Address of the person''s local office of where they are based
    "AddressLine2" text,  -- Second line of the person''s local office of where they are based
    "City" text,  -- City of the person''s local office of where they are based
    "State_Province" text,  -- State or province of the person''s local office of where they are based
    "PostCode" text,  -- Post code of the person''s local office of where they are based
    "Country" text,  -- Country of the person''s local office of where they are based
    "GlobalRegion" text,  -- Global Region of the person''s local office of where they are based. Regions inc
    "GlobalSubRegion" text,  -- Sub-region of the person''s local office where they are based. Global Sub Region
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.Person FROM 'data/Person.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

ALTER TABLE main.Person ADD PRIMARY KEY ("PersonID");

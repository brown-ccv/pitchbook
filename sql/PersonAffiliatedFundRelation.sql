-- Auto-generated from data dictionary for table: PersonAffiliatedFundRelation
-- Columns: 7

DROP TABLE IF EXISTS main.PersonAffiliatedFundRelation CASCADE;

CREATE TABLE main.PersonAffiliatedFundRelation (
    PersonID text,  -- Unique identifier for the person (PbID). Relates to the unique PersonID in Perso
    InvestorID text,  -- Unique identifier for the investor (PbID) that manages the fund the person is af
    InvestorName text,  -- Name of the investor that manages the fund the person is affiliated with
    FundID text,  -- Unique identifier for the fund (PbID) the person is affiliated
    FundName text,  -- Name of the fund where the person is affiliated
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.PersonAffiliatedFundRelation.PersonID IS 'Unique identifier for the person (PbID). Relates to the unique PersonID in Perso';
COMMENT ON COLUMN main.PersonAffiliatedFundRelation.InvestorID IS 'Unique identifier for the investor (PbID) that manages the fund the person is af';
COMMENT ON COLUMN main.PersonAffiliatedFundRelation.InvestorName IS 'Name of the investor that manages the fund the person is affiliated with';
COMMENT ON COLUMN main.PersonAffiliatedFundRelation.FundID IS 'Unique identifier for the fund (PbID) the person is affiliated';
COMMENT ON COLUMN main.PersonAffiliatedFundRelation.FundName IS 'Name of the fund where the person is affiliated';
COMMENT ON COLUMN main.PersonAffiliatedFundRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.PersonAffiliatedFundRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_personaffiliatedfundrelation_personid ON main.PersonAffiliatedFundRelation (PersonID);
CREATE INDEX idx_personaffiliatedfundrelation_rowid ON main.PersonAffiliatedFundRelation (RowID);

\COPY main.PersonAffiliatedFundRelation FROM 'data/PersonAffiliatedFundRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

-- Auto-generated from data dictionary for table: DealCapTableRelation
-- Columns: 28

DROP TABLE IF EXISTS main.DealCapTableRelation CASCADE;

CREATE TABLE main.DealCapTableRelation (
    DealID text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    CapTableID text,  -- Unique identifier for the cap table
    SeriesOfStock text,  -- This is the stock''s placement in the overall sequence of stock issues
    NumberOfSharesAuthorized bigint,  -- Number of shares authorized and outstanding for a particular series of stock
    ParValue float8,  -- Par value shares, preferred or common. For new issuances, par value is typically
    DividendRateAmount float8,  -- Dividend paid per share to holders of that series of stock
    DividendRatePercentage float8,  -- Dividend paid per share to holders of that series of stock. This is a percentage
    OriginalIssuePrice float8,  -- Price originally paid per share at the issuance
    LiquidationPrice float8,  -- Amount shareholders will receive back per share upon liquidation of the company
    LiquidationPreferenceMultiple float8,  -- A multiple return to the investors above investment
    ConversionPrice float8,  -- This is the price of shares upon conversion into common stock shares
    PercentOwned float8,  -- Percent of stock owned for each series
    Stock text,  -- Series of stock issued in each round. Part of cap table history
    TypeOfStock text,  -- The type of stock given to the investor(s) in the round. E.g. common, preferred,
    SharesSought bigint,  -- The total number of shares sought by the investor in the round of financing. Alt
    PricePerShare float8,  -- The price per share paid to the target company at the time of the deal
    NumberOfSharesAcquired bigint,  -- The total number of shares acquired by the buyers/investors in the round of fina
    ConversionRatio text,  -- The number of shares of common stock that could be obtained by converting each s
    LiquidationPreferences text,  -- The amount per share that a holder of a given series of Preferred Stock will rec
    ParticipatingVSNonParticipating text,  -- Series terms either participating or non-participating
    DividendRights text,  -- Tagged  ''Yes'' or ''No'' depending on if dividend rights were given in the stoc
    Cumulative_NonCumulative text,  -- Tagged ''Cumulative'' or ''Non-cumulative'' depending on the stock information f
    AntiDilutionProvisions text,  -- Provision is used to protect investors in the event a company issues equity at a
    RedemptionRights text,  -- Allow investors to require the company to repurchase their preferred stock under
    BoardVotingRights text,  -- ''Yes'' if voting rights or ''No''
    GeneralVotingRights text,  -- ''Yes'' if general voting rights or ''No''
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.DealCapTableRelation.DealID IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.DealCapTableRelation.CapTableID IS 'Unique identifier for the cap table';
COMMENT ON COLUMN main.DealCapTableRelation.SeriesOfStock IS 'This is the stock''s placement in the overall sequence of stock issues';
COMMENT ON COLUMN main.DealCapTableRelation.NumberOfSharesAuthorized IS 'Number of shares authorized and outstanding for a particular series of stock';
COMMENT ON COLUMN main.DealCapTableRelation.ParValue IS 'Par value shares, preferred or common. For new issuances, par value is typically';
COMMENT ON COLUMN main.DealCapTableRelation.DividendRateAmount IS 'Dividend paid per share to holders of that series of stock';
COMMENT ON COLUMN main.DealCapTableRelation.DividendRatePercentage IS 'Dividend paid per share to holders of that series of stock. This is a percentage';
COMMENT ON COLUMN main.DealCapTableRelation.OriginalIssuePrice IS 'Price originally paid per share at the issuance';
COMMENT ON COLUMN main.DealCapTableRelation.LiquidationPrice IS 'Amount shareholders will receive back per share upon liquidation of the company';
COMMENT ON COLUMN main.DealCapTableRelation.LiquidationPreferenceMultiple IS 'A multiple return to the investors above investment';
COMMENT ON COLUMN main.DealCapTableRelation.ConversionPrice IS 'This is the price of shares upon conversion into common stock shares';
COMMENT ON COLUMN main.DealCapTableRelation.PercentOwned IS 'Percent of stock owned for each series';
COMMENT ON COLUMN main.DealCapTableRelation.Stock IS 'Series of stock issued in each round. Part of cap table history';
COMMENT ON COLUMN main.DealCapTableRelation.TypeOfStock IS 'The type of stock given to the investor(s) in the round. E.g. common, preferred,';
COMMENT ON COLUMN main.DealCapTableRelation.SharesSought IS 'The total number of shares sought by the investor in the round of financing. Alt';
COMMENT ON COLUMN main.DealCapTableRelation.PricePerShare IS 'The price per share paid to the target company at the time of the deal';
COMMENT ON COLUMN main.DealCapTableRelation.NumberOfSharesAcquired IS 'The total number of shares acquired by the buyers/investors in the round of fina';
COMMENT ON COLUMN main.DealCapTableRelation.ConversionRatio IS 'The number of shares of common stock that could be obtained by converting each s';
COMMENT ON COLUMN main.DealCapTableRelation.LiquidationPreferences IS 'The amount per share that a holder of a given series of Preferred Stock will rec';
COMMENT ON COLUMN main.DealCapTableRelation.ParticipatingVSNonParticipating IS 'Series terms either participating or non-participating';
COMMENT ON COLUMN main.DealCapTableRelation.DividendRights IS 'Tagged  ''Yes'' or ''No'' depending on if dividend rights were given in the stoc';
COMMENT ON COLUMN main.DealCapTableRelation.Cumulative_NonCumulative IS 'Tagged ''Cumulative'' or ''Non-cumulative'' depending on the stock information f';
COMMENT ON COLUMN main.DealCapTableRelation.AntiDilutionProvisions IS 'Provision is used to protect investors in the event a company issues equity at a';
COMMENT ON COLUMN main.DealCapTableRelation.RedemptionRights IS 'Allow investors to require the company to repurchase their preferred stock under';
COMMENT ON COLUMN main.DealCapTableRelation.BoardVotingRights IS '''Yes'' if voting rights or ''No''';
COMMENT ON COLUMN main.DealCapTableRelation.GeneralVotingRights IS '''Yes'' if general voting rights or ''No''';
COMMENT ON COLUMN main.DealCapTableRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.DealCapTableRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_dealcaptablerelation_dealid ON main.DealCapTableRelation (DealID);
CREATE INDEX idx_dealcaptablerelation_rowid ON main.DealCapTableRelation (RowID);

\COPY main.DealCapTableRelation FROM 'data/DealCapTableRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

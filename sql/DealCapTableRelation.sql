-- Auto-generated from data dictionary for table: DealCapTableRelation
-- Columns: 28

DROP TABLE IF EXISTS main.DealCapTableRelation CASCADE;

CREATE TABLE main.DealCapTableRelation (
    "DealID" text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    "CapTableID" text,  -- Unique identifier for the cap table
    "SeriesOfStock" text,  -- This is the stock''s placement in the overall sequence of stock issues
    "NumberOfSharesAuthorized" bigint,  -- Number of shares authorized and outstanding for a particular series of stock
    "ParValue" float8,  -- Par value shares, preferred or common. For new issuances, par value is typically
    "DividendRateAmount" float8,  -- Dividend paid per share to holders of that series of stock
    "DividendRatePercentage" float8,  -- Dividend paid per share to holders of that series of stock. This is a percentage
    "OriginalIssuePrice" float8,  -- Price originally paid per share at the issuance
    "LiquidationPrice" float8,  -- Amount shareholders will receive back per share upon liquidation of the company
    "LiquidationPreferenceMultiple" float8,  -- A multiple return to the investors above investment
    "ConversionPrice" float8,  -- This is the price of shares upon conversion into common stock shares
    "PercentOwned" float8,  -- Percent of stock owned for each series
    "Stock" text,  -- Series of stock issued in each round. Part of cap table history
    "TypeOfStock" text,  -- The type of stock given to the investor(s) in the round. E.g. common, preferred,
    "SharesSought" bigint,  -- The total number of shares sought by the investor in the round of financing. Alt
    "PricePerShare" float8,  -- The price per share paid to the target company at the time of the deal
    "NumberOfSharesAcquired" bigint,  -- The total number of shares acquired by the buyers/investors in the round of fina
    "ConversionRatio" text,  -- The number of shares of common stock that could be obtained by converting each s
    "LiquidationPreferences" text,  -- The amount per share that a holder of a given series of Preferred Stock will rec
    "ParticipatingVSNonParticipating" text,  -- Series terms either participating or non-participating
    "DividendRights" text,  -- Tagged  ''Yes'' or ''No'' depending on if dividend rights were given in the stoc
    "Cumulative_NonCumulative" text,  -- Tagged ''Cumulative'' or ''Non-cumulative'' depending on the stock information f
    "AntiDilutionProvisions" text,  -- Provision is used to protect investors in the event a company issues equity at a
    "RedemptionRights" text,  -- Allow investors to require the company to repurchase their preferred stock under
    "BoardVotingRights" text,  -- ''Yes'' if voting rights or ''No''
    "GeneralVotingRights" text,  -- ''Yes'' if general voting rights or ''No''
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.DealCapTableRelation FROM 'data/DealCapTableRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_dealcaptablerelation_dealid ON main.DealCapTableRelation ("DealID");
CREATE INDEX idx_dealcaptablerelation_rowid ON main.DealCapTableRelation ("RowID");

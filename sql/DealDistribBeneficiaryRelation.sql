-- Auto-generated from data dictionary for table: DealDistribBeneficiaryRelation
-- Columns: 15

DROP TABLE IF EXISTS main.DealDistribBeneficiaryRelation CASCADE;

CREATE TABLE main.DealDistribBeneficiaryRelation (
    DealID text,  -- Unique identifier for deal (PbID). Relates to the Deal.csv file
    BeneficiaryID text,  -- Unique identifier for the beneficiary (PbID) that is receiving the dividend/dist
    BeneficiaryName text,  -- Name of the entity that is receiving the dividend/distribution
    IRRPercentage text,  -- IRR (Internal Rate of Return) of the specific investment
    ExitMultiple text,  -- Multiple of ''Sale Price'' over ''Cost.'' Essentially, the return on the investe
    Fund1ID text,  -- Fund ID that held this specific investment
    Fund1Name text,  -- Fund name that held this specific investment
    Fund1Amount float8,  -- Amount received by the seller for their fund''s investment
    Fund2ID text,  -- Fund ID of additional fund that held this specific investment (if applicable)
    Fund2Name text,  -- Fund name of additional fund that held this specific investment (if applicable)
    Fund2Amount float8,  -- The amount received by the seller for their second fund''s investment
    PercentageOfCompanyStillHeld float8,  -- Share of company still held after this round
    Currency text,  -- Currency in which the amount is denominated
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.DealID IS 'Unique identifier for deal (PbID). Relates to the Deal.csv file';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.BeneficiaryID IS 'Unique identifier for the beneficiary (PbID) that is receiving the dividend/dist';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.BeneficiaryName IS 'Name of the entity that is receiving the dividend/distribution';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.IRRPercentage IS 'IRR (Internal Rate of Return) of the specific investment';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.ExitMultiple IS 'Multiple of ''Sale Price'' over ''Cost.'' Essentially, the return on the investe';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.Fund1ID IS 'Fund ID that held this specific investment';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.Fund1Name IS 'Fund name that held this specific investment';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.Fund1Amount IS 'Amount received by the seller for their fund''s investment';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.Fund2ID IS 'Fund ID of additional fund that held this specific investment (if applicable)';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.Fund2Name IS 'Fund name of additional fund that held this specific investment (if applicable)';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.Fund2Amount IS 'The amount received by the seller for their second fund''s investment';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.PercentageOfCompanyStillHeld IS 'Share of company still held after this round';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.Currency IS 'Currency in which the amount is denominated';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.DealDistribBeneficiaryRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_dealdistribbeneficiaryrelation_dealid ON main.DealDistribBeneficiaryRelation (DealID);
CREATE INDEX idx_dealdistribbeneficiaryrelation_rowid ON main.DealDistribBeneficiaryRelation (RowID);

\COPY main.DealDistribBeneficiaryRelation FROM 'data/DealDistribBeneficiaryRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

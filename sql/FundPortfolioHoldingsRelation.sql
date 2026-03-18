-- Auto-generated from data dictionary for table: FundPortfolioHoldingsRelation
-- Columns: 37

DROP TABLE IF EXISTS main.FundPortfolioHoldingsRelation CASCADE;

CREATE TABLE main.FundPortfolioHoldingsRelation (
    "FundID" text,  -- Primary key for the fund. By default the unique PitchBook ID (PbID) will be deli
    "BDCName" text,  -- The name of the BDC (fund)
    "Period" text,  -- Time period (quarter)
    "DealID" text,  -- Primary key for the deal. By default the unique PitchBook ID (PbID) will be deli
    "DebtID" text,  -- Unique identifier for each debt round within the deal id (PbID)
    "IssuerName" text,  -- The name of the company issuing debt, CLO fund, or non-CLO fund. If the issuer i
    "IssuerID" text,  -- Unique identifier for issuer (PbID)
    "ReportedIndustry" text,  -- The industry of the issuer as reported by the BDC Fund
    "RelatedDeal" text,  -- The deal type 1 and date of deal
    "RelatedDebt" text,  -- The debt instrument name/type and launch date of debt
    "IndustrySector" text,  -- The industry sector of the company issuing debt
    "IndustryGroup" text,  -- The industry group of the company issuing debt
    "IndustryCode" text,  -- The industry code of the company issuing debt
    "InstrumentType" text,  -- The specific type of debt or equity
    "NativeCurrency" text,  -- The currency code of the debt, as reported by the BDC in their filing
    "Maturity" date,  -- The date on which the instrument matures, as reported by the BDC
    "BaseRefRate" text,  -- The benchmark against which the spread is pegged (SOFR, LIBOR, etc.)
    "Spread" float8,  -- The spread over the base reference rate
    "Floor" float8,  -- The minimum rate under the base rate for loans, typically triggered in a low bas
    "AllInRate" float8,  -- The reference rate plus spread at the time of reporting, as reported by the BDC
    "Principal" float8,  -- The remaining principal outstanding to be paid by the issuer (borrower) to the B
    "Cost" float8,  -- The cost of the instrument at the time of reporting, as reported by the BDC. Thi
    "FairValue" float8,  -- The fair value of the instrument at the time of reporting, as reported by the BD
    "Cash" float8,  -- The percentage of cash on this debt
    "PIK" float8,  -- The percentage of PIK interest on this debt
    "Shares" integer,  -- The number of shares held by the BDC in association with the instrument, as repo
    "FairValueCost" float8,  -- Fair value of the instrument divided by the cost
    "FairValuePrincipal" float8,  -- Fair value of the instrument divided by the principal. This is one measure of th
    "AcquisitionDate" date,  -- The reported date on which the BDC acquired the instrument
    "FirstPeriodReported" text,  -- The first period in which the BDC reported the instrument
    "FinalPeriodReported" text,  -- The final period in which the BDC reported the instrument
    "AccrualStatus" text,  -- The accrual status of the instrument
    "CLO" text,  -- Indicates if the instrument is a CLO fund
    "Syndicated" text,  -- Indicates if the instrument is a broadly syndicated loan
    "Unitranche" text,  -- Indicates if the instrument is a unitranche loan
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."FundID" IS 'Primary key for the fund. By default the unique PitchBook ID (PbID) will be deli';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."BDCName" IS 'The name of the BDC (fund)';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Period" IS 'Time period (quarter)';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."DealID" IS 'Primary key for the deal. By default the unique PitchBook ID (PbID) will be deli';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."DebtID" IS 'Unique identifier for each debt round within the deal id (PbID)';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."IssuerName" IS 'The name of the company issuing debt, CLO fund, or non-CLO fund. If the issuer i';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."IssuerID" IS 'Unique identifier for issuer (PbID)';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."ReportedIndustry" IS 'The industry of the issuer as reported by the BDC Fund';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."RelatedDeal" IS 'The deal type 1 and date of deal';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."RelatedDebt" IS 'The debt instrument name/type and launch date of debt';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."IndustrySector" IS 'The industry sector of the company issuing debt';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."IndustryGroup" IS 'The industry group of the company issuing debt';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."IndustryCode" IS 'The industry code of the company issuing debt';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."InstrumentType" IS 'The specific type of debt or equity';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."NativeCurrency" IS 'The currency code of the debt, as reported by the BDC in their filing';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Maturity" IS 'The date on which the instrument matures, as reported by the BDC';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."BaseRefRate" IS 'The benchmark against which the spread is pegged (SOFR, LIBOR, etc.)';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Spread" IS 'The spread over the base reference rate';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Floor" IS 'The minimum rate under the base rate for loans, typically triggered in a low bas';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."AllInRate" IS 'The reference rate plus spread at the time of reporting, as reported by the BDC';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Principal" IS 'The remaining principal outstanding to be paid by the issuer (borrower) to the B';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Cost" IS 'The cost of the instrument at the time of reporting, as reported by the BDC. Thi';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."FairValue" IS 'The fair value of the instrument at the time of reporting, as reported by the BD';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Cash" IS 'The percentage of cash on this debt';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."PIK" IS 'The percentage of PIK interest on this debt';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Shares" IS 'The number of shares held by the BDC in association with the instrument, as repo';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."FairValueCost" IS 'Fair value of the instrument divided by the cost';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."FairValuePrincipal" IS 'Fair value of the instrument divided by the principal. This is one measure of th';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."AcquisitionDate" IS 'The reported date on which the BDC acquired the instrument';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."FirstPeriodReported" IS 'The first period in which the BDC reported the instrument';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."FinalPeriodReported" IS 'The final period in which the BDC reported the instrument';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."AccrualStatus" IS 'The accrual status of the instrument';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."CLO" IS 'Indicates if the instrument is a CLO fund';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Syndicated" IS 'Indicates if the instrument is a broadly syndicated loan';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."Unitranche" IS 'Indicates if the instrument is a unitranche loan';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.FundPortfolioHoldingsRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_fundportfolioholdingsrelation_fundid ON main.FundPortfolioHoldingsRelation ("FundID");
CREATE INDEX idx_fundportfolioholdingsrelation_rowid ON main.FundPortfolioHoldingsRelation ("RowID");

\COPY main.FundPortfolioHoldingsRelation FROM 'data/FundPortfolioHoldingsRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

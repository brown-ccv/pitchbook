-- Auto-generated from data dictionary for table: FundReturnRelation
-- Columns: 27

DROP TABLE IF EXISTS main.FundReturnRelation CASCADE;

CREATE TABLE main.FundReturnRelation (
    "FundID" text,  -- Unique identifier for the fund (PbID). Relates to the unique FundID in Fund.csv
    "AsOfYear" integer,  -- Year the return history was reported
    "AsOfQuarter" text,  -- Quarter the returns history was reported
    "IRR" float8,  -- A measure of investment return expressed as a percentage. It is the rate which d
    "DPI" float8,  -- Distributed to Paid In Capital is the ratio of capital distributed to the limite
    "TVPI" float8,  -- The ratio of the current value of remaining investments within a fund, plus the 
    "RVPI" float8,  -- Remaining Value Paid-In is the performance metric that provides a measure of how
    "GainSinceInception" float8,  -- Sum of the distributions since inception and the remaining value at the ''as of'
    "Contributed" float8,  -- Total capital that a Limited Partner paid into the fund. When used by an investo
    "CalledDownPercentage" float8,  -- Percentage of capital that the fund has requested from its limited partners out 
    "DryPowder" float8,  -- Remaining amount of capital that can be called down to use for investment purpos
    "DryPowderPercentage" float8,  -- Ratio referring to the remaining amount of Dry Powder in a fund. This ratio is c
    "NAV" float8,  -- Total value of all the unrealized investments in the fund (aka Remaining Value, 
    "Distributed" float8,  -- Amount of capital returned, or distributed, to the limited partners by the inves
    "DistributedPlusNAV" float8,  -- The sum of the distributed and remaining value
    "Sources" text,  -- Comma separated list of the names of all Limited Partners that have disclosed da
    "Quartile" text,  -- A fund is placed into a quartile based on its performance and fund returns, usua
    "IRRDifferenceFromBenchmark" float8,  -- The difference in percentage between a fund''s individual IRR multiple relative 
    "DPIDifferenceFromBenchmark" float8,  -- Difference in percentage between a fund''s individual DPI multiple relative to t
    "RVPIDifferenceFromBenchmark" float8,  -- The difference in percentage between a fund''s individual RVPI multiple relative
    "TVPIDifferenceFromBenchmark" float8,  -- The difference in percentage between a fund''s individual TVPI multiple relative
    "IRRBenchmark" float8,  -- IRR Benchmark is the median of all IRR percentages from that peer group (Fund Ty
    "DPIBenchmark" float8,  -- DPI Benchmark is the median of all DPI multiples from that peer group (Fund Type
    "TVPIBenchmark" float8,  -- TVPI Benchmark is the median of all TVPI multiples from that peer group (Fund Ty
    "RVPIBenchmark" float8,  -- RVPI Benchmark is the median of all RVPI multiples from that peer group (Fund Ty
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

\COPY main.FundReturnRelation FROM 'data/FundReturnRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

CREATE INDEX idx_fundreturnrelation_fundid ON main.FundReturnRelation ("FundID");
CREATE INDEX idx_fundreturnrelation_rowid ON main.FundReturnRelation ("RowID");

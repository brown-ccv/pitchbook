-- Auto-generated from data dictionary for table: FundReturnRelation
-- Columns: 27

DROP TABLE IF EXISTS main.FundReturnRelation CASCADE;

CREATE TABLE main.FundReturnRelation (
    FundID text,  -- Unique identifier for the fund (PbID). Relates to the unique FundID in Fund.csv
    AsOfYear integer,  -- Year the return history was reported
    AsOfQuarter text,  -- Quarter the returns history was reported
    IRR float8,  -- A measure of investment return expressed as a percentage. It is the rate which d
    DPI float8,  -- Distributed to Paid In Capital is the ratio of capital distributed to the limite
    TVPI float8,  -- The ratio of the current value of remaining investments within a fund, plus the 
    RVPI float8,  -- Remaining Value Paid-In is the performance metric that provides a measure of how
    GainSinceInception float8,  -- Sum of the distributions since inception and the remaining value at the ''as of'
    Contributed float8,  -- Total capital that a Limited Partner paid into the fund. When used by an investo
    CalledDownPercentage float8,  -- Percentage of capital that the fund has requested from its limited partners out 
    DryPowder float8,  -- Remaining amount of capital that can be called down to use for investment purpos
    DryPowderPercentage float8,  -- Ratio referring to the remaining amount of Dry Powder in a fund. This ratio is c
    NAV float8,  -- Total value of all the unrealized investments in the fund (aka Remaining Value, 
    Distributed float8,  -- Amount of capital returned, or distributed, to the limited partners by the inves
    DistributedPlusNAV float8,  -- The sum of the distributed and remaining value
    Sources text,  -- Comma separated list of the names of all Limited Partners that have disclosed da
    Quartile text,  -- A fund is placed into a quartile based on its performance and fund returns, usua
    IRRDifferenceFromBenchmark float8,  -- The difference in percentage between a fund''s individual IRR multiple relative 
    DPIDifferenceFromBenchmark float8,  -- Difference in percentage between a fund''s individual DPI multiple relative to t
    RVPIDifferenceFromBenchmark float8,  -- The difference in percentage between a fund''s individual RVPI multiple relative
    TVPIDifferenceFromBenchmark float8,  -- The difference in percentage between a fund''s individual TVPI multiple relative
    IRRBenchmark float8,  -- IRR Benchmark is the median of all IRR percentages from that peer group (Fund Ty
    DPIBenchmark float8,  -- DPI Benchmark is the median of all DPI multiples from that peer group (Fund Type
    TVPIBenchmark float8,  -- TVPI Benchmark is the median of all TVPI multiples from that peer group (Fund Ty
    RVPIBenchmark float8,  -- RVPI Benchmark is the median of all RVPI multiples from that peer group (Fund Ty
    RowID text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    LastUpdated date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.FundReturnRelation.FundID IS 'Unique identifier for the fund (PbID). Relates to the unique FundID in Fund.csv';
COMMENT ON COLUMN main.FundReturnRelation.AsOfYear IS 'Year the return history was reported';
COMMENT ON COLUMN main.FundReturnRelation.AsOfQuarter IS 'Quarter the returns history was reported';
COMMENT ON COLUMN main.FundReturnRelation.IRR IS 'A measure of investment return expressed as a percentage. It is the rate which d';
COMMENT ON COLUMN main.FundReturnRelation.DPI IS 'Distributed to Paid In Capital is the ratio of capital distributed to the limite';
COMMENT ON COLUMN main.FundReturnRelation.TVPI IS 'The ratio of the current value of remaining investments within a fund, plus the ';
COMMENT ON COLUMN main.FundReturnRelation.RVPI IS 'Remaining Value Paid-In is the performance metric that provides a measure of how';
COMMENT ON COLUMN main.FundReturnRelation.GainSinceInception IS 'Sum of the distributions since inception and the remaining value at the ''as of'';
COMMENT ON COLUMN main.FundReturnRelation.Contributed IS 'Total capital that a Limited Partner paid into the fund. When used by an investo';
COMMENT ON COLUMN main.FundReturnRelation.CalledDownPercentage IS 'Percentage of capital that the fund has requested from its limited partners out ';
COMMENT ON COLUMN main.FundReturnRelation.DryPowder IS 'Remaining amount of capital that can be called down to use for investment purpos';
COMMENT ON COLUMN main.FundReturnRelation.DryPowderPercentage IS 'Ratio referring to the remaining amount of Dry Powder in a fund. This ratio is c';
COMMENT ON COLUMN main.FundReturnRelation.NAV IS 'Total value of all the unrealized investments in the fund (aka Remaining Value, ';
COMMENT ON COLUMN main.FundReturnRelation.Distributed IS 'Amount of capital returned, or distributed, to the limited partners by the inves';
COMMENT ON COLUMN main.FundReturnRelation.DistributedPlusNAV IS 'The sum of the distributed and remaining value';
COMMENT ON COLUMN main.FundReturnRelation.Sources IS 'Comma separated list of the names of all Limited Partners that have disclosed da';
COMMENT ON COLUMN main.FundReturnRelation.Quartile IS 'A fund is placed into a quartile based on its performance and fund returns, usua';
COMMENT ON COLUMN main.FundReturnRelation.IRRDifferenceFromBenchmark IS 'The difference in percentage between a fund''s individual IRR multiple relative ';
COMMENT ON COLUMN main.FundReturnRelation.DPIDifferenceFromBenchmark IS 'Difference in percentage between a fund''s individual DPI multiple relative to t';
COMMENT ON COLUMN main.FundReturnRelation.RVPIDifferenceFromBenchmark IS 'The difference in percentage between a fund''s individual RVPI multiple relative';
COMMENT ON COLUMN main.FundReturnRelation.TVPIDifferenceFromBenchmark IS 'The difference in percentage between a fund''s individual TVPI multiple relative';
COMMENT ON COLUMN main.FundReturnRelation.IRRBenchmark IS 'IRR Benchmark is the median of all IRR percentages from that peer group (Fund Ty';
COMMENT ON COLUMN main.FundReturnRelation.DPIBenchmark IS 'DPI Benchmark is the median of all DPI multiples from that peer group (Fund Type';
COMMENT ON COLUMN main.FundReturnRelation.TVPIBenchmark IS 'TVPI Benchmark is the median of all TVPI multiples from that peer group (Fund Ty';
COMMENT ON COLUMN main.FundReturnRelation.RVPIBenchmark IS 'RVPI Benchmark is the median of all RVPI multiples from that peer group (Fund Ty';
COMMENT ON COLUMN main.FundReturnRelation.RowID IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.FundReturnRelation.LastUpdated IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_fundreturnrelation_fundid ON main.FundReturnRelation (FundID);
CREATE INDEX idx_fundreturnrelation_rowid ON main.FundReturnRelation (RowID);

\COPY main.FundReturnRelation FROM 'data/FundReturnRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

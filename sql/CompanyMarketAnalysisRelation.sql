-- Auto-generated from data dictionary for table: CompanyMarketAnalysisRelation
-- Columns: 7

DROP TABLE IF EXISTS main.CompanyMarketAnalysisRelation CASCADE;

CREATE TABLE main.CompanyMarketAnalysisRelation (
    "CompanyID" text,  -- Unique identifier for the company (PbID). Relates to unique CompanyID in Company
    "AnalystCuratedVertical" text,  -- Company vertical created and categorized by PitchBook''s Emerging Tech Analyst t
    "Segment" text,  -- Segments are the main categories that group companies together within a market m
    "Subsegment" text,  -- Subsegments create an additional layer of company grouping within segments
    "ACVReportLastUpdated" text,  -- Date or quarter that the analyst curated vertical was last updated
    "RowID" text,  -- Unique identifier for the row. This field can be ignored or used at the client''
    "LastUpdated" date  -- Date showing the time any data point in the row was last updated. This column is
);

COMMENT ON COLUMN main.CompanyMarketAnalysisRelation."CompanyID" IS 'Unique identifier for the company (PbID). Relates to unique CompanyID in Company';
COMMENT ON COLUMN main.CompanyMarketAnalysisRelation."AnalystCuratedVertical" IS 'Company vertical created and categorized by PitchBook''s Emerging Tech Analyst t';
COMMENT ON COLUMN main.CompanyMarketAnalysisRelation."Segment" IS 'Segments are the main categories that group companies together within a market m';
COMMENT ON COLUMN main.CompanyMarketAnalysisRelation."Subsegment" IS 'Subsegments create an additional layer of company grouping within segments';
COMMENT ON COLUMN main.CompanyMarketAnalysisRelation."ACVReportLastUpdated" IS 'Date or quarter that the analyst curated vertical was last updated';
COMMENT ON COLUMN main.CompanyMarketAnalysisRelation."RowID" IS 'Unique identifier for the row. This field can be ignored or used at the client''';
COMMENT ON COLUMN main.CompanyMarketAnalysisRelation."LastUpdated" IS 'Date showing the time any data point in the row was last updated. This column is';

CREATE INDEX idx_companymarketanalysisrelation_companyid ON main.CompanyMarketAnalysisRelation ("CompanyID");
CREATE INDEX idx_companymarketanalysisrelation_rowid ON main.CompanyMarketAnalysisRelation ("RowID");

\COPY main.CompanyMarketAnalysisRelation FROM 'data/CompanyMarketAnalysisRelation.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8', NULL '');

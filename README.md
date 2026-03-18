# PitchBook

ETL pipeline that reads the PitchBook data dictionary (Excel) and generates PostgreSQL DDL scripts and CSV loading commands.

## Overview

PitchBook provides academic data feeds covering private-market entities: companies, deals, investors, funds, limited partners, service providers, and people. The raw data arrives as a collection of CSV files whose schema is defined in an Excel workbook (_Brown University Academic Feed with Public Financials, v1.1_).

This project automates the database setup by:

1. Parsing the Excel data dictionary to extract table and column definitions
2. Generating one `.sql` file per table (DDL + `\COPY` command)
3. Producing a `justfile` that loads all 79 tables in parallel

## Data Model

The schema contains **7 primary entity tables** and **72 relation tables**.

### Primary Entities

| Table             | Description                                                        |
|-------------------|--------------------------------------------------------------------|
| `Company`         | Companies tracked by PitchBook (128 columns)                      |
| `Deal`            | Financing deals, M&A transactions, IPOs, etc.                     |
| `Investor`        | Venture capital firms, private equity firms, and other investors   |
| `Fund`            | Investment funds managed by investors                              |
| `LimitedPartner`  | LPs that commit capital to funds                                   |
| `ServiceProvider` | Law firms, auditors, placement agents, and other service providers |
| `Person`          | Individuals (executives, board members, partners)                  |

Each primary entity table has a `{TableName}ID` primary key (e.g., `CompanyID`).

### Relation Tables

The 72 relation tables capture relationships between entities—for example, `CompanyInvestorRelation` links companies to their investors, and `DealCapTableRelation` captures cap table entries for deals. Relation tables are indexed on their first column (typically the parent entity's foreign key) and on `RowID` when present.

## Prerequisites

- **Python** 3.13.2+ (see `.python-version`)
- **[uv](https://docs.astral.sh/uv/)** — Python project and dependency manager
- **PostgreSQL** — target database
- **[just](https://github.com/casey/just)** — command runner

## Setup

```bash
# Install Python dependencies
uv sync

# Place your PitchBook CSV files in data/
ls data/
# Company.csv  Deal.csv  CompanyIndustryRelation.csv  ...

# Create the target database
createdb pitchbook
```

The Excel data dictionary belongs at `docs/Brown_University_Academic_Feed_w__Public_Financials_v1_1.xlsx` (already included).

## Usage

### Generate SQL from the data dictionary

```bash
just generate
```

This runs `src/generate_sql.py`, which reads the Excel workbook and writes:
- One `.sql` file per table into `sql/`
- A fresh `justfile` with loading recipes

You only need to re-run this if the data dictionary changes.

### Create the schema and load data

```bash
# Create the main schema
just create-schema

# Load all 79 tables in parallel (8 jobs by default)
just load-all

# Or load a single table
just load Company
```

### Full reload

Drop everything and reload from scratch:

```bash
just reload
```

### Configuration

Override the database name or parallelism level on the command line:

```bash
just db=my_other_db load-all
just jobs=16 load-all
```

| Variable | Default      | Description                    |
|----------|--------------|--------------------------------|
| `db`     | `pitchbook`  | PostgreSQL database name       |
| `jobs`   | `8`          | Number of parallel psql processes |

## Project Structure

```
pitchbook/
├── data/                # PitchBook CSV files (git-ignored)
├── docs/                # Excel data dictionary
├── sql/                 # Generated SQL scripts (one per table)
├── src/
│   └── generate_sql.py  # Data dictionary parser and SQL generator
├── justfile             # Generated command runner recipes
├── pyproject.toml       # Python project metadata
└── uv.lock              # Locked dependencies
```

## How It Works

`src/generate_sql.py` does the following:

1. **Parses the workbook** — opens the Excel file with `openpyxl`, skipping the `TrackingChanges` and `Summary` sheets. Each remaining sheet defines one table.
2. **Extracts columns** — reads the table name from cell B1 and column definitions (name, type, description) starting at row 6.
3. **Maps types** — converts PitchBook types (`TEXT`, `TEXT(n)`, `DECIMAL`, `INTEGER`, `LONG`, `DATE`) to PostgreSQL equivalents (`text`, `float8`, `integer`, `bigint`, `date`).
4. **Generates SQL** — for each table, produces a `.sql` file containing:
   - `DROP TABLE IF EXISTS ... CASCADE`
   - `CREATE TABLE` with typed columns and inline comments
   - `COMMENT ON COLUMN` statements for full column documentation
   - Indexes on the first column and `RowID` (relation tables only)
   - A `\COPY` command to load the corresponding CSV from `data/`
5. **Generates the justfile** — writes a `justfile` with recipes for schema creation, individual table loading, parallel bulk loading, and full reload.

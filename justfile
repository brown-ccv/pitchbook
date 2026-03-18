# Auto-generated justfile for PitchBook data loading

# Default database connection (override: just db=mydb load-all)
db := "pitchbook"

# Parallelism level (override: just jobs=16 load-all)
jobs := "8"

# Regenerate SQL from data dictionary
generate:
    uv run python src/generate_sql.py

# Create the schema (run once before loading)
create-schema:
    psql -d {{db}} -c "CREATE SCHEMA IF NOT EXISTS main;"

# Load a single table
load table:
    psql -d {{db}} -f sql/{{table}}.sql

# Load all tables in parallel
load-all: create-schema
    @echo "Loading 79 tables with {{jobs}} parallel jobs..."
    ls sql/*.sql | xargs -P {{jobs}} -I {} psql -d {{db}} -f {}
    @echo "All tables loaded!"

# Drop the entire schema (destructive)
drop-schema:
    psql -d {{db}} -c "DROP SCHEMA IF EXISTS main CASCADE;"

# Full reload: drop, recreate, load
reload: drop-schema load-all

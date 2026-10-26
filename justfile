# Auto-generated justfile for PitchBook data loading

# Default database connection (override: just db=mydb load-all)
db := "pitchbook"
host := "phlpgmoodyscit.services.brown.edu"

# Regenerate SQL from data dictionary
generate:
    uv run python src/generate_sql.py

# Create the schema (run once before loading)
create-schema:
    psql --dbname {{db}} --host {{host}} -c "CREATE SCHEMA IF NOT EXISTS main;"

# Load a single table
load table:
    psql --dbname {{db}} --host {{host}} --password --file sql/{{table}}.sql

# Load all tables sequentially
load-all: create-schema
    @echo "Loading 79 tables sequentially..."
    set -e; for f in sql/*.sql; do psql --dbname {{db}} --host {{host}} --file $f; done
    @echo "All tables loaded!"

# Drop the entire schema (destructive)
drop-schema:
    psql --dbname {{db}} --host {{host}} -c "DROP SCHEMA IF EXISTS main CASCADE;"

# Full reload: drop, recreate, load
reload: drop-schema load-all

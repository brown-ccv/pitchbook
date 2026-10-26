#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G
#SBATCH --time=24:00:00
#SBATCH --output=logs/pitchbook-sql-ingest_%j.out
#SBATCH --error=logs/pitchbook-sql-ingest_%j.err


module load postgres

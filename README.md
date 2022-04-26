# dbt-experiment

## Requirements
### Setup `direnv`
Use `direnv` to load environment variables

1. Install `direnv` (https://direnv.net/docs/installation.html)
2. Hook into your shell (https://direnv.net/docs/hook.html)

### Install dbt dependencies
run `make deps`

### Setup dbt project

 ```sh
   # Authenticate with GCP
   source venv/bin/activate

   # Load environment variables
   direnv allow

   # Create and setup profile.yml
   dbt init
   ```

 run `dbt debug` to test your connection to BigQuery
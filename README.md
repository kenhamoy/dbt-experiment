# dbt-experiment

## Requirements
### Setup `direnv`
Use `direnv` to load environment variables

1. Install `direnv` (https://direnv.net/docs/installation.html)
2. Hook into your shell (https://direnv.net/docs/hook.html)

<<<<<<< HEAD
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
=======
### Setup dbt 
1. Install dependencies
    ```sh
    # Installs dbt-core and dbt-bigquery inside a virtual environment
    make deps
    ```

2. in **Bitwarden**, search for `ae-experiment BQ access service account key` and copy the JSON string, then paste it insde the `keyfile.json` file found in the root directory of this project

3. Setup dbt profile
    ```sh
    # Activate virtual environment
    source venv/bin/activate

    # Load environment variables
    direnv allow

    # Create and setup profile.yml
    dbt init
    ```

 4. run `dbt debug` to **test your connection** to BigQuery
>>>>>>> bd058f38118f25aa52d5ddf1adf2a32af75f085f

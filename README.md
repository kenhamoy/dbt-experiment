# dbt-experiment
[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg)](https://github.com/prettier/prettier)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

## Requirements
### Setup `direnv`
Use `direnv` to load environment variables

1. Install `direnv` (https://direnv.net/docs/installation.html)
2. Hook into your shell (https://direnv.net/docs/hook.html)

### Setup dbt 
1. Install dependencies
    ```sh
    # Install dbt-core and dbt-bigquery inside a virtual environment
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


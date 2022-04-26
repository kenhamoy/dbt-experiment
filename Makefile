.PHONY: deps
deps: venv
	venv/bin/python3 -m pip install -U pip
	git -C dbt-core pull || git clone https://github.com/dbt-labs/dbt-core.git 
	cd dbt-core && ../venv/bin/python3 -m pip install -r requirements.txt
	git -C dbt-bigquery pull || git clone https://github.com/dbt-labs/dbt-bigquery.git 
	cd dbt-bigquery && ../venv/bin/python3 -m pip install .
	touch keyfile.json
	
venv:
	test -d venv || virtualenv -p python3 venv

.PHONY: clean
clean: 
	rm -rf venv
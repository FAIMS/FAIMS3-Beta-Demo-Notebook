#!/bin/bash

set -euo pipefail

export SERVER_FULLNAME="${1:-demo.db.faims.edu.au}" # dev, alpha, testing, selenium
# export SPID="${2:-$SERVER_FULLNAME}"
# cp 20220110-model1.json faims3-temp-notebook-migrator/testnotebook.json
# cp 20220110-model1.json faims3-temp-notebook-migrator/
# cd faims3-temp-notebook-migrator
echo "Load FIPSoilData ${SERVER_FULLNAME}"
#sed -e "s/##SPID##/${SPID}/g" 20220110-model1.json > fiptemp.json
#python faims3-temp-notebook-migrator/loadNotebook.py $SERVER_FULLNAME "FIPSoilData Notebook (v0.1.0) for ${SPID}" "fiptemp.json"
python3 faims3-temp-notebook-migrator/loadNotebook.py --project_key "demo_notebook" --notebook_json "FAIMS3-Beta-Demo-Notebook.json"  --env-file=secret.json

#!/bin/bash

set -e

#CONNEXION="${1}&prefix=NONE"

osmosis --rri data/diffs --simplify-change --write-xml-change data/diffs/changes.osc.gz

#imposm diff -mapping //git/covid19_map/db/import.yml -cachedir /data/imposm_cache -dbschema-production public -connection ${CONNEXION} /data/download/diffs/changes.osc.gz

#!/bin/bash
set -e

DATASET=${1}
MAPPING=${2}
CONNEXION=${3}


#imposm import -mapping $MAPPING -read $DATASET -overwritecache -cachedir tmp/imposm_cache
imposm import -write -connection ${CONNEXION} -mapping $MAPPING -cachedir tmp/imposm_cache -dbschema-import public -diff


#echo baseUrl=http://download.openstreetmap.fr/replication/merge/${DATASET}/minute/ > /data/download/diffs/configuration.txt
#echo maxInterval = 7200 >> /data/download/diffs/configuration.txt

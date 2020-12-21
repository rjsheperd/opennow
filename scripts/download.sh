place=${1:-portland_oregon}
$place
osm_extract_download \
  --api-token=1e955d5b-d88d-4f77-9df4-5ce95e7af396 \
  --data-format=pbf \
  $place

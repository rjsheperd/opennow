INPUT_FILE=${1:-"oregon-latest.pbf"}
OUTPUT_FILE=${2:-"oregon-pois.osm"}

echo "-- Converting $INPUT_FILE to o5m format"
osmconvert $1 \
  --all-to-nodes \
  --drop-author \
  --drop-broken-refs \
  --drop-version \
  --out-o5m \
  -o="test.o5m"

echo "-- Filtering amenities and shops"
osmfilter "test.o5m"\
  --keep="amenity= shop=" > $OUTPUT_FILE

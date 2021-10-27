#!/usr/bin/env bash

echo "# GIS"
bcc-entropy gis \
  --workspace="$workspace" \
  --end-date-time "$end_date_time" \
  --hours 36

echo "# NYSE"
bcc-entropy nyse \
  --workspace="$workspace" \
  --username="$username" \
  --password="$password" \
  --end-date "$end_date" \
  --exit-delay=0 \
  --days 1

echo "# JMA-QUAKE"
bcc-entropy jma-quake \
  --workspace="$workspace" \
  --end-date-time "$end_date_time" \
  --hours 36

echo "# GEOL-UOA"
bcc-entropy geol-uoa \
  --workspace="$workspace" \
  --end-date-time "$end_date_time" \
  --hours 36

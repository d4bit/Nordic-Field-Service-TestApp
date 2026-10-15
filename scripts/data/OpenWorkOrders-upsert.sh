#!/usr/bin/env bash
set -euo pipefail
# US-118: Open work orders and the last 24 months of service history are migrated
ORG=${1:?usage: $0 <sandbox-alias>}
sf data upsert bulk --sobject WorkOrder --file scripts/data/templates/OpenWorkOrders.csv --external-id Legacy_Id__c -o "$ORG" --wait 30

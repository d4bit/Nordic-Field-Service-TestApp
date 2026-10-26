#!/usr/bin/env bash
set -euo pipefail
# US-119: Duplicate customers are merged before go-live
ORG=${1:?usage: $0 <sandbox-alias>}
sf data upsert bulk --sobject Account --file scripts/data/templates/DuplicateCustomersMerged.csv --external-id Legacy_Id__c -o "$ORG" --wait 30

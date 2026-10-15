#!/usr/bin/env bash
set -euo pipefail
# US-117: Active customers and their appliances are migrated from the legacy ServiceMax system
ORG=${1:?usage: $0 <sandbox-alias>}
sf data upsert bulk --sobject Asset --file scripts/data/templates/ActiveCustomersAppliances.csv --external-id Legacy_Id__c -o "$ORG" --wait 30

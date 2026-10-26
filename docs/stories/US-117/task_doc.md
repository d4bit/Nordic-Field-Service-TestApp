# US-117: Active customers and their appliances are migrated from the legacy ServiceMax system
**Status:** Release Ready · **Type:** story · **Category:** data migration · **Points:** 3 · **Sprint:** 1

## Summary
As a migration lead, I want all active customers (approx. 60,000) and their appliances to be migrated from the legacy ServiceMax system, so that no customer history is lost when we switch systems.

## What was built
- `scripts/data/ActiveCustomersAppliances-mapping.md`
- `scripts/data/ActiveCustomersAppliances-upsert.sh`
- `scripts/data/templates/ActiveCustomersAppliances.csv`

## How it works
- AC 1: Active customers and their appliances are migrated
- AC 2: Allowed values
- AC 3: Re-runnable load
- AC 4: Counts reconcile

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names ActiveCustomersAppliancesServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Active customers and their appliances are migrated**
  Follow the AC in a sandbox with a test Asset record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Allowed values**
  Follow the AC in a sandbox with a test Asset record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 3: Re-runnable load**
  Follow the AC in a sandbox with a test Asset record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 4: Counts reconcile**
  Follow the AC in a sandbox with a test Asset record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

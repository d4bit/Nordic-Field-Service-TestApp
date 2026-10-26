# US-119: Duplicate customers are merged before go-live
**Status:** Release Ready · **Type:** story · **Category:** data migration · **Points:** 3 · **Sprint:** 1

## Summary
As a migration lead, I want duplicate customers to be merged before go-live. Matching rules are TBD with the data owner, so that no customer history is lost when we switch systems.

## What was built
- `scripts/data/DuplicateCustomersMerged-mapping.md`
- `scripts/data/DuplicateCustomersMerged-upsert.sh`
- `scripts/data/templates/DuplicateCustomersMerged.csv`

## How it works
- AC 1: Duplicate customers are merged before go-live
- AC 2: Re-runnable load
- AC 3: Counts reconcile

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names DuplicateCustomersMergedServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Duplicate customers are merged before go-live**
  Follow the AC in a sandbox with a test Account record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Re-runnable load**
  Follow the AC in a sandbox with a test Account record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 3: Counts reconcile**
  Follow the AC in a sandbox with a test Account record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

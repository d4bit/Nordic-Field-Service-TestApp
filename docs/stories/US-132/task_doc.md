# US-132: Separate permission sets for dispatchers and service managers
**Status:** Release Ready · **Type:** story · **Category:** security · **Points:** 2 · **Sprint:** 1

## Summary
As a dispatcher, I want separate permission sets; partners must not access customer financial data, so that people only see and change what they should.

## What was built
- Scripts under `scripts/`

## How it works
- AC 1: Separate permission sets for dispatchers
- AC 2: Granted by permission set

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names SeparatePermissionSetsServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Separate permission sets for dispatchers**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Granted by permission set**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.

## Deployment notes
## Post-Deployment
- [ ] **Assign `SeparatePermissionSets_Access`** to the users listed in the story.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

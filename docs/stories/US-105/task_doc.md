# US-105: Work orders created outside business hours are flagged for next-day dispatch
**Status:** Release Ready · **Type:** story · **Category:** configuration · **Points:** 3 · **Sprint:** 1

## Summary
As a customer service agent, I want work orders created outside business hours to be flagged for next-day dispatch, so that the process runs with fewer manual steps.

## What was built
- Scripts under `scripts/`

## How it works
- AC 1: Work orders created outside business hours
- AC 2: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names WorkOrdersCreatedServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Work orders created outside business hours**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Bulk safe**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.

## Deployment notes
## Post-Deployment
- [ ] **Activate the flow** `ServiceAppointment_AfterSave_WorkOrdersCreated` if it was deployed inactive

## Verification
- [ ] Create a test ServiceAppointment and check the result.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

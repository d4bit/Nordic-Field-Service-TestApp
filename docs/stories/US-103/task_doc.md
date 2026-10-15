# US-103: Create a work order from a case in one click
**Status:** Release Ready · **Type:** story · **Category:** configuration · **Points:** 3 · **Sprint:** 1

## Summary
As a customer service agent, I want to create a work order from a case in one click, copying the customer, address and appliance, so that the process runs with fewer manual steps.

## What was built
- Scripts under `scripts/`

## How it works
- AC 1: Create a work order from a case in one click
- AC 2: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names CreateWorkOrderServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Create a work order from a case in one click**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Bulk safe**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.

## Deployment notes
## Post-Deployment
- [ ] **Activate the flow** `WorkOrder_AfterSave_CreateWorkOrder` if it was deployed inactive

## Verification
- [ ] Create a test WorkOrder and check the result.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

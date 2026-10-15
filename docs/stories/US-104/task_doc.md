# US-104: Work order has a priority derived from the appliance warranty status
**Status:** Release Ready · **Type:** story · **Category:** configuration · **Points:** 3 · **Sprint:** 1

## Summary
As a customer service agent, I want every work order to have a priority (Low, Medium, High, Critical) derived from the appliance warranty status, so that the process runs with fewer manual steps.

## What was built
- Scripts under `scripts/`

## How it works
- AC 1: Work order has a priority derived from the appliance
- AC 2: Allowed values
- AC 3: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names WorkOrderHasServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Work order has a priority derived from the appliance**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Allowed values**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 3: Bulk safe**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.

## Deployment notes
## Post-Deployment
- [ ] **Activate the flow** `WorkOrder_AfterSave_WorkOrderHas` if it was deployed inactive

## Verification
- [ ] Create a test WorkOrder and check the result.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

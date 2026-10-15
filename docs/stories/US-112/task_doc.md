# US-112: View the job, appliance history and parts list offline
**Status:** Release Ready · **Type:** story · **Category:** development · **Points:** 8 · **Sprint:** 2

## Summary
As a technician, I want to view the job, appliance history and parts list offline in the Field Service mobile app, so that the work gets done faster and with fewer mistakes.

## What was built
- `ViewJobApplianceService` (classes)
- `ViewJobApplianceServiceTest` (classes)
- `WorkOrderTrigger` (triggers)

## How it works
- AC 1: View the job, appliance history
- AC 2: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names ViewJobApplianceServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: View the job, appliance history**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Bulk safe**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

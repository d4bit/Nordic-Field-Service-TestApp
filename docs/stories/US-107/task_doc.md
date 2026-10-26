# US-107: See all unscheduled work orders on the Gantt and schedule them to technicians
**Status:** Release Ready · **Type:** story · **Category:** development · **Points:** 5 · **Sprint:** 2

## Summary
As a dispatcher, I want to see all unscheduled work orders on the Gantt and schedule them to technicians by skill and territory, so that the work gets done faster and with fewer mistakes.

## What was built
- `SeeUnscheduledWorkService` (classes)
- `SeeUnscheduledWorkServiceTest` (classes)
- `ServiceAppointmentTrigger` (triggers)

## How it works
- AC 1: See all unscheduled work orders on the Gantt
- AC 2: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names SeeUnscheduledWorkServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: See all unscheduled work orders on the Gantt**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Bulk safe**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

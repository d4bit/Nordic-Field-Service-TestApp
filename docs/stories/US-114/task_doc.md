# US-114: Select a reason when a job cannot be completed
**Status:** Release Ready · **Type:** story · **Category:** development · **Points:** 5 · **Sprint:** 3

## Summary
As a technician, I want to select a reason and the system should create a follow-up appointment, when a job cannot be completed, so that the work gets done faster and with fewer mistakes.

## What was built
- `SelectReasonJobService` (classes)
- `SelectReasonJobServiceTest` (classes)
- `ServiceAppointmentTrigger` (triggers)

## How it works
- AC 1: Select a reason when a job cannot be completed
- AC 2: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names SelectReasonJobServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Select a reason when a job cannot be completed**
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

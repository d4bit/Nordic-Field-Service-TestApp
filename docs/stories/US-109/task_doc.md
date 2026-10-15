# US-109: Appointments are never scheduled outside the technician’s working hours
**Status:** Release Ready · **Type:** story · **Category:** development · **Points:** 5 · **Sprint:** 2

## Summary
As a technician, I want appointments to never be scheduled outside the technician’s working hours, so that the work gets done faster and with fewer mistakes.

## What was built
- `AppointmentsScheduledOutsideService` (classes)
- `AppointmentsScheduledOutsideServiceTest` (classes)
- `ServiceAppointmentTrigger` (triggers)

## How it works
- AC 1: Appointments are never scheduled outside
- AC 2: Negative path
- AC 3: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names AppointmentsScheduledOutsideServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Appointments are never scheduled outside**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Negative path**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 3: Bulk safe**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

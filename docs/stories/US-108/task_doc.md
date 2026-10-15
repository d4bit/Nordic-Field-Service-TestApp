# US-108: System sends the customer an SMS with the arrival window
**Status:** Release Ready · **Type:** story · **Category:** configuration · **Points:** 3 · **Sprint:** 1

## Summary
As a customer, I want the system to send the customer an SMS with the arrival window when an appointment is dispatched, so that the process runs with fewer manual steps.

## What was built
- Scripts under `scripts/`

## How it works
- AC 1: System sends the customer an SMS
- AC 2: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names SystemSendsCustomerServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: System sends the customer an SMS**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Bulk safe**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.

## Deployment notes
## Post-Deployment
- [ ] **Activate the flow** `ServiceAppointment_AfterSave_SystemSendsCustomer` if it was deployed inactive

## Verification
- [ ] Create a test ServiceAppointment and check the result.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

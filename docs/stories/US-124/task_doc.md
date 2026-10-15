# US-124: Integration retries and alerts the support team if SAP is unavailable
**Status:** Release Ready · **Type:** story · **Category:** integration · **Points:** 8 · **Sprint:** 5

## Summary
As a service manager, I want the integration to retry and alert the support team, if SAP is unavailable, so that nobody has to re-enter data between systems.

## What was built
- `SAPIntegrationRetriesAlertsClient` (classes)
- `SAPIntegrationRetriesAlertsClientTest` (classes)

## How it works
- AC 1: Integration retries and alerts the support team
- AC 2: Failure handling

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names IntegrationRetriesAlertsServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Integration retries and alerts the support team**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Failure handling**
  Follow the AC in a sandbox with a test ServiceAppointment record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

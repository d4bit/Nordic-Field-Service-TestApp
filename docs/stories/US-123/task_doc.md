# US-123: Completed work orders are sent to SAP for invoicing within 15 minutes
**Status:** Release Ready · **Type:** story · **Category:** integration · **Points:** 8 · **Sprint:** 5

## Summary
As a service manager, I want completed work orders to be sent to SAP for invoicing within 15 minutes, so that nobody has to re-enter data between systems.

## What was built
- `SAPCompletedWorkOrdersClient` (classes)
- `SAPCompletedWorkOrdersClientTest` (classes)

## How it works
- AC 1: Completed work orders are sent to SAP for invoicing
- AC 2: Timing
- AC 3: Failure handling

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names CompletedWorkOrdersServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Completed work orders are sent to SAP for invoicing**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Timing**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 3: Failure handling**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

# US-113: Capture the customer signature and photos before completing a job
**Status:** Release Ready · **Type:** story · **Category:** development · **Points:** 8 · **Sprint:** 3

## Summary
As a technician, I want to capture the customer signature and photos before completing a job, so that the work gets done faster and with fewer mistakes.

## What was built
- `CaptureCustomerSignatureService` (classes)
- `CaptureCustomerSignatureServiceTest` (classes)
- `WorkOrderTrigger` (triggers)

## How it works
- AC 1: Capture the customer signature and photos
- AC 2: Bulk safe

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names CaptureCustomerSignatureServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Capture the customer signature and photos**
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

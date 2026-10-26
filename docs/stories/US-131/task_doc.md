# US-131: See work orders in their own territory
**Status:** Release Ready · **Type:** story · **Category:** security · **Points:** 2 · **Sprint:** 1

## Summary
As a technician, I want to be sure that technicians only see work orders in their own territory, so that people only see and change what they should.

## What was built
- Scripts under `scripts/`

## How it works
- AC 1: See work orders in their own territory
- AC 2: Access is restricted
- AC 3: Granted by permission set

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names SeeWorkOrdersServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: See work orders in their own territory**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Access is restricted**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 3: Granted by permission set**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.

## Deployment notes
## Post-Deployment
- [ ] **Assign `SeeWorkOrders_Access`** to the users listed in the story.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

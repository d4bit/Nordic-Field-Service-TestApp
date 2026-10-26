# US-118: Open work orders and the last 24 months of service history are migrated
**Status:** Release Ready · **Type:** story · **Category:** data migration · **Points:** 5 · **Sprint:** 4

## Summary
As a migration lead, I want open work orders and the last 24 months of service history to be migrated with their original reference numbers, so that no customer history is lost when we switch systems.

## What was built
- `scripts/data/OpenWorkOrders-mapping.md`
- `scripts/data/OpenWorkOrders-upsert.sh`
- `scripts/data/templates/OpenWorkOrders.csv`

## How it works
- AC 1: Open work orders and the last 24 months of service
- AC 2: Re-runnable load
- AC 3: Counts reconcile

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names OpenWorkOrdersServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Open work orders and the last 24 months of service**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Re-runnable load**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 3: Counts reconcile**
  Follow the AC in a sandbox with a test WorkOrder record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

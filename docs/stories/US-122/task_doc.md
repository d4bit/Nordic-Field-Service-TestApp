# US-122: Spare parts stock is checked in real time against the SAP warehouse API
**Status:** Release Ready · **Type:** story · **Category:** integration · **Points:** 8 · **Sprint:** 4

## Summary
As a service manager, I want spare parts stock to be checked in real time against the SAP warehouse API before a part is reserved, so that nobody has to re-enter data between systems.

## What was built
- `SAPSparePartsStockClient` (classes)
- `SAPSparePartsStockClientTest` (classes)

## How it works
- AC 1: Spare parts stock is checked in real time against
- AC 2: Failure handling

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names SparePartsStockServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Spare parts stock is checked in real time against**
  Follow the AC in a sandbox with a test ProductItem record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Failure handling**
  Follow the AC in a sandbox with a test ProductItem record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 2, with screenshots per acceptance criterion).

## Known limitations
- None identified.

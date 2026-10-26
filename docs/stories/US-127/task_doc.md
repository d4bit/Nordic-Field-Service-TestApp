# US-127: Dashboard for service managers
**Status:** Release Ready · **Type:** story · **Category:** reporting · **Points:** 2 · **Sprint:** 5

## Summary
As a service manager, I want a dashboard with first-time fix rate, average travel time and SLA compliance per territory, so that I can act on facts instead of spreadsheets.

## What was built
- Scripts under `scripts/`

## How it works
- AC 1: Dashboard for service managers
- AC 2: Per-team view

## How to test
## Unit Tests
- [ ] Run: `sf apex run test --class-names DashboardServiceManagersServiceTest --code-coverage --synchronous`

## Manual Testing
- [ ] **AC 1: Dashboard for service managers**
  Follow the AC in a sandbox with a test ServiceTerritory record.
  **Verify:** the outcome described in the AC.
- [ ] **AC 2: Per-team view**
  Follow the AC in a sandbox with a test ServiceTerritory record.
  **Verify:** the outcome described in the AC.

## Deployment notes
No manual steps.

## Test evidence
Peer-tested by QA — see **test_report.md** in this story's folder (version 1, with screenshots per acceptance criterion).

## Known limitations
- None identified.

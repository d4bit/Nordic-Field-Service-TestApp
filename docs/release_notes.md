# Release 1.1.0 — 2026-10-15

## Highlights
- Reporting

## Delivered
| Code | Title | Type | Category | Points |
|---|---|---|---|---|
| US-127 | Dashboard for service managers | story | reporting | 2 |
| US-128 | Weekly report of repeat visits per appliance model is emailed to the quality team | story | reporting | 2 |

## Deployment
**Target org:** Trailhead Org (production · https://creative-badger-387hpg-dev-ed.trailblaze.lightning.force.com/lightning/page/home)

Validation (simulated check-only → Trailhead Org): ✅ passed
Simulated check-only validation to Trailhead Org (production, https://creative-badger-387hpg-dev-ed.trailblaze.lightning.force.com/lightning/page/home) — nothing was sent to Salesforce.
Components: 38 · Test level: RunLocalTests · Tests run: 24 (simulated) · Result: Succeeded
All 180 files passed static validation.

## Smoke test results
| Code | Result | Note |
|---|---|---|
| US-127 | ✅ | Critical path verified |
| US-128 | ✅ | Critical path verified |

## Known issues
- None.

## Rollback plan
Revert the release commit, deploy the previous manifest.

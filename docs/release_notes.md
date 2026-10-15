# Release 1.0.0 — 2026-10-15

## Highlights
- Security and Access
- Work Order Management
- Mobile Technician Experience
- Data Migration
- Integrations

## Delivered
| Code | Title | Type | Category | Points |
|---|---|---|---|---|
| US-131 | See work orders in their own territory | story | security | 2 |
| US-132 | Separate permission sets for dispatchers and service managers | story | security | 2 |
| US-103 | Create a work order from a case in one click | story | configuration | 3 |
| US-104 | Work order has a priority derived from the appliance warranty status | story | configuration | 3 |
| US-105 | Work orders created outside business hours are flagged for next-day dispatch | story | configuration | 3 |
| US-108 | System sends the customer an SMS with the arrival window | story | configuration | 3 |
| US-107 | See all unscheduled work orders on the Gantt and schedule them to technicians | story | development | 5 |
| US-109 | Appointments are never scheduled outside the technician’s working hours | story | development | 5 |
| US-112 | View the job, appliance history and parts list offline | story | development | 8 |
| US-113 | Capture the customer signature and photos before completing a job | story | development | 8 |
| US-114 | Select a reason when a job cannot be completed | story | development | 5 |
| US-117 | Active customers and their appliances are migrated from the legacy ServiceMax system | story | data migration | 5 |
| US-118 | Open work orders and the last 24 months of service history are migrated | story | data migration | 5 |
| US-119 | Duplicate customers are merged before go-live | story | data migration | 5 |
| US-122 | Spare parts stock is checked in real time against the SAP warehouse API | story | integration | 8 |
| US-123 | Completed work orders are sent to SAP for invoicing within 15 minutes | story | integration | 8 |
| US-124 | Integration retries and alerts the support team if SAP is unavailable | story | integration | 8 |

## Deployment
**Target org:** Trailhead Org (production · https://creative-badger-387hpg-dev-ed.trailblaze.lightning.force.com/lightning/page/home)

Validation (simulated check-only → Trailhead Org): ✅ passed
Simulated check-only validation to Trailhead Org (production, https://creative-badger-387hpg-dev-ed.trailblaze.lightning.force.com/lightning/page/home) — nothing was sent to Salesforce.
Components: 38 · Test level: RunLocalTests · Tests run: 24 (simulated) · Result: Succeeded
All 179 files passed static validation.

## Smoke test results
| Code | Result | Note |
|---|---|---|
| US-131 | ✅ | Critical path verified |
| US-132 | ✅ | Critical path verified |
| US-103 | ✅ | Critical path verified |
| US-104 | ✅ | Critical path verified |
| US-105 | ✅ | Critical path verified |
| US-108 | ✅ | Critical path verified |
| US-107 | ✅ | Critical path verified |
| US-109 | ✅ | Critical path verified |
| US-112 | ✅ | Critical path verified |
| US-113 | ✅ | Critical path verified |
| US-114 | ✅ | Critical path verified |
| US-117 | ✅ | Critical path verified |
| US-118 | ✅ | Critical path verified |
| US-119 | ✅ | Critical path verified |
| US-122 | ✅ | Critical path verified |
| US-123 | ✅ | Critical path verified |
| US-124 | ✅ | Critical path verified |

## Known issues
- None.

## Rollback plan
Revert the release commit, deploy the previous manifest, delete migrated records by `Migration_Batch__c`.

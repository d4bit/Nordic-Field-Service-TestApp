# Delivery plan — Nordic Field Service Requirements

## Summary
19 items, **80 story points**, 5 sprint(s) of 2 weeks at ~20 points.

## Sprint plan
| Sprint | Stories | Points | Goal |
|---|---|---|---|
| 1 | US-131, US-132, US-103, US-104, US-105, US-108 | 16 | Foundations: security, configuration |
| 2 | US-107, US-109, US-112 | 18 | Deliver development |
| 3 | US-113, US-114 | 13 | Deliver development |
| 4 | US-118, US-122 | 13 | Deliver data migration, integration |
| 5 | US-123, US-124, US-127, US-128 | 20 | Deliver integration, reporting |

## Critical path
US-103 → US-118 · US-103 → US-122 · US-103 → US-123 · US-103 → US-124

## Milestones
| Milestone | When |
|---|---|
| Foundations ready | End of sprint 1 |
| UAT | End of sprint 5 |
| Go-live | UAT + 1 week |

## Risks & mitigations
| Risk | Mitigation |
|---|---|
| External system latency or downtime | Timeouts, retries via outbox, alerting |
| Duplicate or dirty legacy data | Dedupe before load, external-id upserts, reconciliation |
| Open questions unanswered | Affected stories stay in *Requires additional information* |

## Assumptions
- Open questions are answered before the sprint that contains the affected stories.

# Solution design — Nordic Field Service

## Architecture overview
Salesforce platform with `ServiceAppointment`, `WorkOrder`, `Case`, `Asset`, `ProductItem`; integrations with ServiceMax, SAP, ERP.

## Key decisions
| Decision | Reason | Alternatives |
|---|---|---|
| Clicks before code | Admin-maintainable, faster to change | Apex everywhere |
| External ids on every migrated object | Re-runnable, relationship-safe loads | Salesforce Ids mapping tables |
| Transactional outbox for ServiceMax | No lost messages, retries, error write-back | Synchronous callouts only |

## Components by area

### FT-106 Scheduling and dispatch
- **US-107** See all unscheduled work orders on the Gantt and schedule them to technicians — development
- **US-108** System sends the customer an SMS with the arrival window — configuration
- **US-109** Appointments are never scheduled outside the technician’s working hours — development

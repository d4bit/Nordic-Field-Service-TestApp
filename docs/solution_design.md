# Solution design — Nordic Field Service Requirements

## Architecture overview
Salesforce platform with `ServiceAppointment`, `WorkOrder`, `Case`, `Asset`, `ProductItem`; integrations with ServiceMax, SAP.

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

### FT-116 Data Migration
- **US-117** Active customers and their appliances are migrated from the legacy ServiceMax system — data migration
- **US-118** Open work orders and the last 24 months of service history are migrated — data migration
- **US-119** Duplicate customers are merged before go-live — data migration

### FT-126 Reporting
- **US-127** Dashboard for service managers — reporting
- **US-128** Weekly report of repeat visits per appliance model is emailed to the quality team — reporting

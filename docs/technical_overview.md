# Technical overview — Nordic Field Service

## US-131 See work orders in their own territory
- Scripts under `scripts/`

## US-132 Separate permission sets for dispatchers and service managers
- Scripts under `scripts/`

## US-103 Create a work order from a case in one click
- Scripts under `scripts/`

## US-104 Work order has a priority derived from the appliance warranty status
- Scripts under `scripts/`

## US-105 Work orders created outside business hours are flagged for next-day dispatch
- Scripts under `scripts/`

## US-108 System sends the customer an SMS with the arrival window
- Scripts under `scripts/`

## US-107 See all unscheduled work orders on the Gantt and schedule them to technicians
- `SeeUnscheduledWorkService` (classes)
- `SeeUnscheduledWorkServiceTest` (classes)
- `ServiceAppointmentTrigger` (triggers)

## US-109 Appointments are never scheduled outside the technician’s working hours
- `AppointmentsScheduledOutsideService` (classes)
- `AppointmentsScheduledOutsideServiceTest` (classes)
- `ServiceAppointmentTrigger` (triggers)

## US-112 View the job, appliance history and parts list offline
- `ViewJobApplianceService` (classes)
- `ViewJobApplianceServiceTest` (classes)
- `WorkOrderTrigger` (triggers)

## US-117 Active customers and their appliances are migrated from the legacy ServiceMax system
- `scripts/data/ActiveCustomersAppliances-mapping.md`
- `scripts/data/ActiveCustomersAppliances-upsert.sh`
- `scripts/data/templates/ActiveCustomersAppliances.csv`

## US-114 Select a reason when a job cannot be completed
- `SelectReasonJobService` (classes)
- `SelectReasonJobServiceTest` (classes)
- `ServiceAppointmentTrigger` (triggers)

## US-119 Duplicate customers are merged before go-live
- `scripts/data/DuplicateCustomersMerged-mapping.md`
- `scripts/data/DuplicateCustomersMerged-upsert.sh`
- `scripts/data/templates/DuplicateCustomersMerged.csv`

## US-122 Spare parts stock is checked in real time against the SAP warehouse API
- `SAPSparePartsStockClient` (classes)
- `SAPSparePartsStockClientTest` (classes)

## US-123 Completed work orders are sent to SAP for invoicing within 15 minutes
- `SAPCompletedWorkOrdersClient` (classes)
- `SAPCompletedWorkOrdersClientTest` (classes)

## US-124 Integration retries and alerts the support team if SAP is unavailable
- `SAPIntegrationRetriesAlertsClient` (classes)
- `SAPIntegrationRetriesAlertsClientTest` (classes)

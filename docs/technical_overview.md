# Technical overview — Nordic Field Service Requirements

## US-131 See work orders in their own territory
- Scripts under `scripts/`

## US-132 Separate permission sets for dispatchers and service managers
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

## US-113 Capture the customer signature and photos before completing a job
- `CaptureCustomerSignatureService` (classes)
- `CaptureCustomerSignatureServiceTest` (classes)
- `WorkOrderTrigger` (triggers)

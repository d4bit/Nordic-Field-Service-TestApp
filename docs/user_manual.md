# User manual — Nordic Field Service

This manual explains how to use the solution day to day.

## See work orders in their own territory
You can be sure that technicians only see work orders in their own territory, so that people only see and change what they should.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: See work orders in their own territory
- AC 2: Access is restricted
- AC 3: Granted by permission set

## Separate permission sets for dispatchers and service managers
You can separate permission sets; partners must not access customer financial data, so that people only see and change what they should.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Separate permission sets for dispatchers
- AC 2: Granted by permission set

## Create a work order from a case in one click
You can create a work order from a case in one click, copying the customer, address and appliance, so that the process runs with fewer manual steps.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Create a work order from a case in one click
- AC 2: Bulk safe

## Work order has a priority derived from the appliance warranty status
You can every work order to have a priority (Low, Medium, High, Critical) derived from the appliance warranty status, so that the process runs with fewer manual steps.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Work order has a priority derived from the appliance
- AC 2: Allowed values
- AC 3: Bulk safe

## Work orders created outside business hours are flagged for next-day dispatch
You can work orders created outside business hours to be flagged for next-day dispatch, so that the process runs with fewer manual steps.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Work orders created outside business hours
- AC 2: Bulk safe

## System sends the customer an SMS with the arrival window
You can the system to send the customer an SMS with the arrival window when an appointment is dispatched, so that the process runs with fewer manual steps.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: System sends the customer an SMS
- AC 2: Bulk safe

## See all unscheduled work orders on the Gantt and schedule them to technicians
You can see all unscheduled work orders on the Gantt and schedule them to technicians by skill and territory, so that the work gets done faster and with fewer mistakes.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: See all unscheduled work orders on the Gantt
- AC 2: Bulk safe

## Appointments are never scheduled outside the technician’s working hours
You can appointments to never be scheduled outside the technician’s working hours, so that the work gets done faster and with fewer mistakes.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Appointments are never scheduled outside
- AC 2: Negative path
- AC 3: Bulk safe

## View the job, appliance history and parts list offline
You can view the job, appliance history and parts list offline in the Field Service mobile app, so that the work gets done faster and with fewer mistakes.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: View the job, appliance history
- AC 2: Bulk safe

## Active customers and their appliances are migrated from the legacy ServiceMax system
You can all active customers (approx. 60,000) and their appliances to be migrated from the legacy ServiceMax system, so that no customer history is lost when we switch systems.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Active customers and their appliances are migrated
- AC 2: Allowed values
- AC 3: Re-runnable load
- AC 4: Counts reconcile

## Select a reason when a job cannot be completed
You can select a reason and the system should create a follow-up appointment, when a job cannot be completed, so that the work gets done faster and with fewer mistakes.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Select a reason when a job cannot be completed
- AC 2: Bulk safe

## Open work orders and the last 24 months of service history are migrated
You can open work orders and the last 24 months of service history to be migrated with their original reference numbers, so that no customer history is lost when we switch systems.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Open work orders and the last 24 months of service
- AC 2: Re-runnable load
- AC 3: Counts reconcile

## Duplicate customers are merged before go-live
You can duplicate customers to be merged before go-live. Matching rules are TBD with the data owner, so that no customer history is lost when we switch systems.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Duplicate customers are merged before go-live
- AC 2: Re-runnable load
- AC 3: Counts reconcile

## Spare parts stock is checked in real time against the SAP warehouse API
You can spare parts stock to be checked in real time against the SAP warehouse API before a part is reserved, so that nobody has to re-enter data between systems.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Spare parts stock is checked in real time against
- AC 2: Failure handling

## Completed work orders are sent to SAP for invoicing within 15 minutes
You can completed work orders to be sent to SAP for invoicing within 15 minutes, so that nobody has to re-enter data between systems.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Completed work orders are sent to SAP for invoicing
- AC 2: Timing
- AC 3: Failure handling

## Integration retries and alerts the support team if SAP is unavailable
You can the integration to retry and alert the support team, if SAP is unavailable, so that nobody has to re-enter data between systems.

**Steps**
1. Open the record in Salesforce.
2. Work as usual — the behaviour described below happens automatically.
3. Check the result described below.

- AC 1: Integration retries and alerts the support team
- AC 2: Failure handling

## Dashboard for service managers
You can a dashboard with first-time fix rate, average travel time and SLA compliance per territory, so that I can act on facts instead of spreadsheets.

**Steps**
1. Open the record in Salesforce.
2. Open the dashboard from the Dashboards tab.
3. Check the result described below.

- AC 1: Dashboard for service managers
- AC 2: Per-team view

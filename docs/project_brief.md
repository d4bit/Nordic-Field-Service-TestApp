# Project brief — Nordic Field Service

_Derived from **Nordic Appliance Care - Salesforce Field Service Requirements Version 1.2 - Prepared for the implementation partner** (field-service-requirements.pdf)._

## Goal
Nordic Appliance Care repairs household appliances across Sweden and Norway. Today technicians receive jobs by phone and paper, and customers have no visibility of when a technician will arrive. The company wants to run its service operation on Salesforce Field Service.

## Scope
- **Work Order Management** — Work order intake, Scheduling and dispatch
- **Mobile Technician Experience** — Mobile Technician Experience
- **Data Migration** — Data Migration
- **Integrations** — Integrations
- **Reporting** — Reporting
- **Security and Access** — Security and Access

## Personas
| Persona | Main needs |
|---|---|
| Customer service agent | Create a work order from a case in one click; Work order has a priority derived from the appliance warranty status |
| Dispatcher | See all unscheduled work orders on the Gantt and schedule them to technicians; Separate permission sets for dispatchers and service managers |
| Technician | Appointments are never scheduled outside the technician’s working hours; View the job, appliance history and parts list offline |
| Service manager | Spare parts stock is checked in real time against the SAP warehouse API; Completed work orders are sent to SAP for invoicing within 15 minutes |
| Partner | — |
| Support team | — |

## Business processes (to-be)
1. **Work Order Management:** create a work order from a case in one click; work order has a priority derived from the appliance warranty status; work orders created outside business hours are flagged for next-day dispatch; see all unscheduled work orders on the gantt and schedule them to technicians.
2. **Mobile Technician Experience:** view the job, appliance history and parts list offline; capture the customer signature and photos before completing a job; select a reason when a job cannot be completed.
3. **Data Migration:** active customers and their appliances are migrated from the legacy servicemax system; open work orders and the last 24 months of service history are migrated; duplicate customers are merged before go-live.
4. **Integrations:** spare parts stock is checked in real time against the sap warehouse api; completed work orders are sent to sap for invoicing within 15 minutes; integration retries and alerts the support team if sap is unavailable.
5. **Reporting:** dashboard for service managers; weekly report of repeat visits per appliance model is emailed to the quality team.
6. **Security and Access:** see work orders in their own territory; separate permission sets for dispatchers and service managers.

## Data entities
`ServiceAppointment`, `WorkOrder`, `Case`, `Asset`, `ProductItem`, `ServiceResource`, `ServiceTerritory`, `Order`, `Contract`, `Account`

## Integrations
- ServiceMax
- SAP
- ERP

## Non-functional requirements
- Technicians must be able to view the job, appliance history and parts list offline in the Field Service mobile app
- All active customers (approx. 60,000) and their appliances must be migrated from the legacy ServiceMax system
- Open work orders and the last 24 months of service history shall be migrated with their original reference numbers
- Completed work orders shall be sent to SAP for invoicing within 15 minutes
- If SAP is unavailable the integration must retry and alert the support team

## Assumptions
- The required Salesforce licences are available in the target org.
- Open questions are answered before development of the affected stories.

## Out of scope
- Anything not described in the source document.

# US-119 mapping

| Component | Type | Notes |
|---|---|---|
| `Account.Legacy_Id__c` | Field (Text 40, External Id, unique) | Upsert key |
| `scripts/data/*-upsert.sh` | Load scripts | Bulk API 2.0, parent-before-child |
| `Bypass_Automation` | Custom permission | Bypasses triggers/flows for the migration user |

#### Architecture decision
Bulk API 2.0 upserts on external ids, automation bypass via custom permission.

#### Security
- Access through role-based permission sets; no profile changes.

#### Test approach
- Unit tests: positive, negative and 200-record bulk.
- Manual: one check per AC (see How to Test).

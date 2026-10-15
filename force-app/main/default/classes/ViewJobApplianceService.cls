/**
 * US-112 — View the job, appliance history and parts list offline
 */
public with sharing class ViewJobApplianceService {
    public static void process(List<WorkOrder> records) {
        if (records == null || records.isEmpty()) {
            return;
        }
        Set<Id> relatedIds = new Set<Id>();
        for (WorkOrder r : records) {
            if (r.Id != null) {
                relatedIds.add(r.Id);
            }
        }
        Map<Id, WorkOrder> existing = new Map<Id, WorkOrder>(ViewJobApplianceSelector.byIds(relatedIds));
        for (WorkOrder r : records) {
            WorkOrder prior = existing.get(r.Id);
            r.ViewJobAppliance_Status__c = prior == null ? 'New' : 'Updated';
        }
    }
}

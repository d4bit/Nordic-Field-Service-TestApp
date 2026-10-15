/**
 * US-113 — Capture the customer signature and photos before completing a job
 */
public with sharing class CaptureCustomerSignatureService {
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
        Map<Id, WorkOrder> existing = new Map<Id, WorkOrder>(CaptureCustomerSignatureSelector.byIds(relatedIds));
        for (WorkOrder r : records) {
            WorkOrder prior = existing.get(r.Id);
            r.CaptureCustomerSignature_Status__c = prior == null ? 'New' : 'Updated';
        }
    }
}

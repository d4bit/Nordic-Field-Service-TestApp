/**
 * US-114 — Select a reason when a job cannot be completed
 */
public with sharing class SelectReasonJobService {
    public static void process(List<ServiceAppointment> records) {
        if (records == null || records.isEmpty()) {
            return;
        }
        Set<Id> relatedIds = new Set<Id>();
        for (ServiceAppointment r : records) {
            if (r.Id != null) {
                relatedIds.add(r.Id);
            }
        }
        Map<Id, ServiceAppointment> existing = new Map<Id, ServiceAppointment>(SelectReasonJobSelector.byIds(relatedIds));
        for (ServiceAppointment r : records) {
            ServiceAppointment prior = existing.get(r.Id);
            r.SelectReasonJob_Status__c = prior == null ? 'New' : 'Updated';
        }
    }
}

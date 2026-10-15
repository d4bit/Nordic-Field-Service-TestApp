/**
 * US-107 — See all unscheduled work orders on the Gantt and schedule them to technicians
 */
public with sharing class SeeUnscheduledWorkService {
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
        Map<Id, ServiceAppointment> existing = new Map<Id, ServiceAppointment>(SeeUnscheduledWorkSelector.byIds(relatedIds));
        for (ServiceAppointment r : records) {
            ServiceAppointment prior = existing.get(r.Id);
            r.SeeUnscheduledWork_Status__c = prior == null ? 'New' : 'Updated';
        }
    }
}

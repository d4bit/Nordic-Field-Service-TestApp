/**
 * US-109 — Appointments are never scheduled outside the technician’s working hours
 */
public with sharing class AppointmentsScheduledOutsideService {
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
        Map<Id, ServiceAppointment> existing = new Map<Id, ServiceAppointment>(AppointmentsScheduledOutsideSelector.byIds(relatedIds));
        for (ServiceAppointment r : records) {
            ServiceAppointment prior = existing.get(r.Id);
            r.AppointmentsScheduledOutside_Status__c = prior == null ? 'New' : 'Updated';
        }
    }
}

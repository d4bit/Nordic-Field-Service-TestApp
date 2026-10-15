trigger ServiceAppointmentTrigger on ServiceAppointment (before insert, before update) {
    new ServiceAppointmentTriggerHandler().run();
}

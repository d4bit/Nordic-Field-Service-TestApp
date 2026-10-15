trigger WorkOrderTrigger on WorkOrder (before insert, before update) {
    new WorkOrderTriggerHandler().run();
}

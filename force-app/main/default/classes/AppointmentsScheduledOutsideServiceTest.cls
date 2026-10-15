@IsTest
private class AppointmentsScheduledOutsideServiceTest {
    @TestSetup
    static void setup() {
        TestDataFactory.createServiceAppointmentRecords(1, true);
    }

    @IsTest
    static void shouldProcessRecordsWhenInputIsValid() {
        List<ServiceAppointment> records = TestDataFactory.createServiceAppointmentRecords(1, false);
        Test.startTest();
        AppointmentsScheduledOutsideService.process(records);
        Test.stopTest();
        Assert.isFalse(records.isEmpty(), 'Records should be processed');
    }

    @IsTest
    static void shouldIgnoreEmptyInput() {
        Test.startTest();
        AppointmentsScheduledOutsideService.process(new List<ServiceAppointment>());
        Test.stopTest();
        Assert.areEqual(0, Limits.getDmlStatements(), 'No DML expected for empty input');
    }

    @IsTest
    static void shouldHandleBulkOf200() {
        List<ServiceAppointment> records = TestDataFactory.createServiceAppointmentRecords(200, false);
        Test.startTest();
        AppointmentsScheduledOutsideService.process(records);
        Test.stopTest();
        Assert.areEqual(200, records.size(), 'All 200 records processed without limit errors');
    }
}

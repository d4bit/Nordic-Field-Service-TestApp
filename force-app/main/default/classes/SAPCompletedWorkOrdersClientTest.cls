@IsTest
private class SAPCompletedWorkOrdersClientTest {
    @TestSetup
    static void setup() {
        TestDataFactory.createWorkOrderRecords(1, true);
    }

    @IsTest
    static void shouldProcessRecordsWhenInputIsValid() {
        List<WorkOrder> records = TestDataFactory.createWorkOrderRecords(1, false);
        Test.startTest();
        SAPCompletedWorkOrdersClient.process(records);
        Test.stopTest();
        Assert.isFalse(records.isEmpty(), 'Records should be processed');
    }

    @IsTest
    static void shouldIgnoreEmptyInput() {
        Test.startTest();
        SAPCompletedWorkOrdersClient.process(new List<WorkOrder>());
        Test.stopTest();
        Assert.areEqual(0, Limits.getDmlStatements(), 'No DML expected for empty input');
    }

    @IsTest
    static void shouldHandleBulkOf200() {
        List<WorkOrder> records = TestDataFactory.createWorkOrderRecords(200, false);
        Test.startTest();
        SAPCompletedWorkOrdersClient.process(records);
        Test.stopTest();
        Assert.areEqual(200, records.size(), 'All 200 records processed without limit errors');
    }
}

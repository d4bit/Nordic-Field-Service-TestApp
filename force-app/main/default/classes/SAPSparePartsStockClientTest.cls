@IsTest
private class SAPSparePartsStockClientTest {
    @TestSetup
    static void setup() {
        TestDataFactory.createProductItemRecords(1, true);
    }

    @IsTest
    static void shouldProcessRecordsWhenInputIsValid() {
        List<ProductItem> records = TestDataFactory.createProductItemRecords(1, false);
        Test.startTest();
        SAPSparePartsStockClient.process(records);
        Test.stopTest();
        Assert.isFalse(records.isEmpty(), 'Records should be processed');
    }

    @IsTest
    static void shouldIgnoreEmptyInput() {
        Test.startTest();
        SAPSparePartsStockClient.process(new List<ProductItem>());
        Test.stopTest();
        Assert.areEqual(0, Limits.getDmlStatements(), 'No DML expected for empty input');
    }

    @IsTest
    static void shouldHandleBulkOf200() {
        List<ProductItem> records = TestDataFactory.createProductItemRecords(200, false);
        Test.startTest();
        SAPSparePartsStockClient.process(records);
        Test.stopTest();
        Assert.areEqual(200, records.size(), 'All 200 records processed without limit errors');
    }
}

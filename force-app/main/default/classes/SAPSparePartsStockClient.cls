/**
 * US-122 — Spare parts stock is checked in real time against the SAP warehouse API
 */
public with sharing class SAPSparePartsStockClient {
    @TestVisible private static final Integer TIMEOUT_MS = 10000;

    public static HttpResponse send(String path, String body) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:SAP_API' + path);
        req.setMethod(body == null ? 'GET' : 'POST');
        req.setTimeout(TIMEOUT_MS);
        if (body != null) {
            req.setBody(body);
        }
        try {
            return new Http().send(req);
        } catch (CalloutException e) {
            ErrorLogger.log(e, 'SAPSparePartsStockClient.send', path);
            IntegrationOutbox.enqueueRetry(path, body);
            return null;
        }
    }
}

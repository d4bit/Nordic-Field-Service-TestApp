/**
 * US-124 — Integration retries and alerts the support team if SAP is unavailable
 */
public with sharing class SAPIntegrationRetriesAlertsClient {
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
            ErrorLogger.log(e, 'SAPIntegrationRetriesAlertsClient.send', path);
            IntegrationOutbox.enqueueRetry(path, body);
            return null;
        }
    }
}

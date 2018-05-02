# SwaggerClient::CallcreditIdentityCheckResponseExtraChecksRealTimeFraudAlertsReportVelocityData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The ‘Type’ attribute defines the Velocity data item that the results have been generated for. The ‘Type’ attribute can be one of the following below. | [optional] 
**last_seen** | **DateTime** | The date and time that the same input data was last seen, within the VelocityPeriod and Level* set in the configuration. | [optional] 
**times_seen** | **Integer** | The number of times that the same input data has been seen, within the VelocityPeriod and Level* set in the configuration. | [optional] 
**warning** | **BOOLEAN** | If the TimesSeen exceeds the VelocityThreshold set in the configuration this will be ‘true’, otherwise ‘false’. | [optional] 



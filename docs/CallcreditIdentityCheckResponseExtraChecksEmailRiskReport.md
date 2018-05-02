# SwaggerClient::CallcreditIdentityCheckResponseExtraChecksEmailRiskReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**score** | **Integer** | A risk rating on a scale from one to a thousand. The higher the score, the higher the risk | [optional] 
**email_address** | **String** |  | [optional] 
**risk_level** | **String** | An assessment of the level of fraud risk associated with the email address provided, based on the risk score.   Very High - 899-1000  High - 799-898  Medium High - 599-798 Neutral - 300-598  Low - 100-299  Very Low - 0-99 | [optional] 
**description** | **String** | Relevant information to understand the score | [optional] 
**created_date** | **Date** | The date which the email mailbox was created. | [optional] 
**first_verified_date** | **Date** | The date which the email address was first verified. | [optional] 
**status** | **String** | Current status of the email address   Active - Email mailbox is currently active  Inactive - Email mailbox is currently not active  Expired - Email mailbox was previously active but not currently  Unknown - Unable to determine email mailbox status | [optional] 
**domain** | [**CallcreditIdentityCheckResponseExtraChecksEmailRiskReportDomain**](CallcreditIdentityCheckResponseExtraChecksEmailRiskReportDomain.md) |  | [optional] 



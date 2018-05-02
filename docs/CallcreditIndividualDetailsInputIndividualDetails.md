# SwaggerClient::CallcreditIndividualDetailsInputIndividualDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date_of_birth** | **Date** | YYYY-mm-dd | [optional] 
**title** | **String** | The individual’s title. A minimum of 2 characters must be entered. | 
**first_name** | **String** | The individual’s forename. A minimum of 1 character must be entered. | 
**other_names** | **String** | The individuals other (middle) name. | [optional] 
**surname** | **String** | The individuals surname. A minimum of 2 characters must be entered. | 
**email_address** | **String** | The email address of the individual. This field is required for \&quot;Email Risk\&quot; extra cheacks. If it is not provided or &#x60;NULL&#x60; the &#x60;extraChecks&#x60; will have a warning specifying the exact reason and empty &#x60;emailRisk&#x60; report. | [optional] 



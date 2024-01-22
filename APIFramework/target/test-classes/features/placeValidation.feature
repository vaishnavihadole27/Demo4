Feature: Validating place APIs
 
@AddPlace @Regression
Scenario Outline: Verify if place is being Successfully added using AddPlaceAPI
	Given Add Place Payload with "<name>" "<language>" "<address>"
	When user calls "AddPlaceAPI" with "POST" http request
	Then the API call is success with status code 200
	And "status" is response body is "OK"
	And "scope" is response body is "APP"
	And verify place_Id created maps to "<name>" using "getPlaceAPI"
	
Examples:
	|name		|language		|address		|
	|AAHouse	|English		|Lb Nagar		|
#	|BBHouse	|Telugu			|NTR Nagar		|
 
@DeletePlace @Regression
Scenario: Verify if Delete place Functionality is working
 
	Given DeletePlace Payload
	When user calls "deletePlaceAPI" with "POST" http request
	Then the API call is success with status code 200
	And "status" is response body is "OK"
   
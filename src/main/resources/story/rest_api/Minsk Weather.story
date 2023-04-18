Scenario: Check if weather in Minsk above zero
When I execute HTTP GET request for resource with URL `https://api.open-meteo.com/v1/forecast?latitude=53.8845271&longitude=27.4285635&current_weather=true`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.current_weather.temperature` GREATER_THAN `0`

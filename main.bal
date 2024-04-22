import ballerina/http;

service /convertCelsiusToFahrenheit on new http:Listener(8080) {

    resource function get convert(float celsius) returns float|error {
        // Convert Celsius to Fahrenheit
        float fahrenheit = (celsius * 9/5) + 32;
        return fahrenheit;
    }
}

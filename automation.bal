import ballerina/log;
import ballerina/os;

public function main() returns error? {
    do {
        log:printInfo(os:getEnv("CHOREO_HELLOWORLDCONN_SERVICEURL"));        
        string var1 = check httpClient->/greeting;
        log:printInfo(var1);
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}

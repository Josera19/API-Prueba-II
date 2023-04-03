import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

type Prueba record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : "Welcome to Choreo!"};
        return greetingMessage;
    }
}

service /prueba on new http:Listener(8090) {
    resource function get .(string name) returns Prueba {
        Prueba pruebaMessage = {"from" : "Venezuela", "to" : name, "message" : "Welcome to the Joungle!"};
        return pruebaMessage;
    }
}



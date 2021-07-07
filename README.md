# axi-fx-service

axi-fx service: This application has three REST API services: 
1st service: Create Fx Quotes
```
Its a HTTP POST request and created a new FX quote based on the buy and sell currency requested.

URI Endpoint:{HOST}:{PORT}/api/quotes
HTTP METHOD: POST
```
Example:
```
URI: http://localhost:8081/api/quotes
REQUEST BODY
{
  "buyCurrency": "AUD",
  "sellCurrency": "USD",
  "buyAmount": 123
}

NOTE: you can either provide the buyAmount or the sellAmount based on need.
```

RESPONSE:
```
{
    "id": "c1ae1e7e-66f7-4ae8-8407-aeda9874d716",
    "fxRate": 1.3344013008504259,
    "dateCreated": "2021-07-07 10:03:37",
    "sellAmount": 92.17616913413603,
    "buyAmount": 0,
    "fxPair": "AUD/USD=1.3344013008504259"
}
```
2nd Service: Get Quote
```
This service gets an exiting quote based on the unique identifier provided.

URI Endpoint: http://HOST:PORT/api/quotes/{quoteId}
HTTP METHOD: GET
```
Example:
```
URI: http://localhost:8081/api/quotes/c1ae1e7e-66f7-4ae8-8407-aeda9874d716

Response:
{
    "buyAmount": 0,
    "fxPair": "AUD/USD=1.3344013008504259",
    "fxRate": 1.3344013008504259,
    "id": "c1ae1e7e-66f7-4ae8-8407-aeda9874d716",
    "sellAmount": 92.17616913413603,
    "timestamp": "2021-07-07 10:03:37"
}
```

3rd Service: Update Quote
```
This service updates an exiting quote based on the unique identifier provided.

URI Endpoint: http://HOST:PORT/api/quotes/{quoteId}
HTTP METHOD: PUT
```
Example:
```
URI: http://localhost:8081/api/quotes/c1ae1e7e-66f7-4ae8-8407-aeda9874d716
```
REQUEST:
```
{
    "buyAmount": 0,
    "fxPair": "AUD/USD=1.3344013008504250",
    "fxRate": 1.3344013008504250,
    "sellAmount": 92.17616913413604
}
```
RESPONSE:
```
{
    "buyAmount": 0,
    "fxPair": "AUD/USD=1.3344013008504259",
    "fxRate": 1.3344013008504259,
    "id": "c1ae1e7e-66f7-4ae8-8407-aeda9874d716",
    "sellAmount": 92.17616913413603,
    "timestamp": "2021-07-07 10:03:37"
}
```
Alternative way to access the API's

It can be also accessed through the MULE API KIT Console:
http://127.0.0.1:8081/console/
The Endpoint list all the API's and its usage which can also be used to test the Application.

Project Details:

Steps to RUN:
```
1. Please download the H2 DB and run it in server mode if a Windows machine, if MAC/LINUX you can simply run java -jar h2*.jar to start the DB.
2. Please run the SQL script attched in the repository under the path src/main/resources/fx_db.sql
3. Import the project as a normal Mule project in Anypoint Studio.
4. Run the application as a Mule application.
5. It should be good to test the endpoints.
```

Improments and Notes:
```
While running the application in Anypoint Studio, please ensure you have added the h2*.jar in the java build path as a refernced lib otherwise the 
application will throw a NoClassDefinitionFound error. 

I had some technical issues to convert the project to Maven, as I was unable to download the libraries from Mule's private repo. So its just a general Mule appllication.

As most of time went in making the infrastructure ready, having time time I could not handle business validations and add some unit test cases.

**Note**: The markup percentage is a configurable property in the properties file. I have set it to 5% i.e 5 currently. Please feel free to change it to any value you want.

```
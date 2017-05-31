#  Dropwizard and SOAP API

A java implementation of an external API using dropwizard (Port 3002).

SOAP API implemented with JAX-WS (Port 3000).

## Run the service

Run the `build.sh` script.

## Run the tests
To run the tests, run `mvn test` in this directory.

## Post to /soap/thing

### Post body

```
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
   <soap:Body xmlns:m="http://services.jaxws.example.kainos.com/" >
      <m:getThing>
         <arg0>0</arg0>
      </m:getThing>
   </soap:Body>
</soap:Envelope>
```
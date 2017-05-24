package com.kainos.example.services;

import com.codahale.metrics.annotation.Metered;

import javax.jws.WebMethod;
import javax.jws.WebService;

@Metered
@WebService
public class HelloWorldSOAPService {

    @WebMethod
    public String sayHello() {
        return "Hello world!";
    }
}

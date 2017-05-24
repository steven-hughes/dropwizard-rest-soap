package com.kainos.example.jaxws.services;

import com.kainos.example.jaxws.models.Thing;

import javax.jws.WebService;
import java.util.ArrayList;

@WebService(endpointInterface = "com.kainos.example.jaxws.services.IThingService")
public class ThingService implements IThingService {

    private int thingCount = 0;
    private ArrayList<Thing> things = new ArrayList<Thing>();

    @Override
    public String getThing(int id) {
        things.add(new Thing(thingCount, "This is thing: " + thingCount));
        thingCount++;
        return things.get(id).toString();
    }
}

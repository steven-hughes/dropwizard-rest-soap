package com.kainos.example.jaxws.models;

import java.io.Serializable;

public class Thing implements Serializable {

    private static final long serialVersionUID = -5577579081118070434L;

    private int id;
    private String thing;

    public Thing(int id, String thing) {
        this.id = id;
        this.thing = thing;
    }

    @Override
    public String toString(){
        return "Thing ID: " + id + ", description: " + thing;
    }
}

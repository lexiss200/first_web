package app.model;

import app.entities.City;
import app.entities.User;

import java.util.ArrayList;
import java.util.List;

public class Model {
    private static Model instance = new Model();

    private List<City> model;

    public static Model getInstance() {
        return instance;
    }

    private Model() {
        model = new ArrayList<City>();
    }

    public void add(City city) {
        model.add(city);
    }

    public List<String> list() {
        List<String> names = new ArrayList<String>();
        for (City city : instance.model) {
            names.add(city.getName());
        }
        return names;
    }
}

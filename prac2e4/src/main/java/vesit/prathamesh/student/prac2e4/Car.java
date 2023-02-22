package vesit.prathamesh.student.prac2e4;

import org.springframework.beans.factory.annotation.Autowired;

public class Car {
    private String carColor;
    private String brand;
    private Engine engine;
    
    @Autowired
    public Car(Engine engine) {
        this.engine = engine;
    }

    public Engine getEngine() {
        return engine;
    }

    public void setEngine(Engine engine) {
        this.engine = engine;
    }

    public Car() {
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String toString() {
        return "Car{" +
                "carColor='" + carColor + '\'' +
                ", brand='" + brand + '\'' +
                ", engine=" + engine.toString() +
                '}';
    }

    public String getCarColor() {
        return carColor;
    }

    public void setCarColor(String carColor) {
        this.carColor = carColor;
    }
}

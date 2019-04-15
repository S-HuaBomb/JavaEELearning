package com.test.circle;

import java.math.BigDecimal;

public class Circle {

    public Circle() {}

    private String radius = "1";
    private String perimeter = null;
    private String area = null;
    private BigDecimal TWO = new BigDecimal(2);
    private BigDecimal PI = new BigDecimal(3.14);

    public String getRadius() {
        return radius;
    }

    public void setRadius(String radius) {
        this.radius = radius;
    }

    public String getPerimeter() {
        return perimeter;
    }

    public String getArea() {
        return area;
    }

    public void perimeter() {
        BigDecimal r = new BigDecimal(this.radius);
        this.perimeter = PI.multiply(r).multiply(TWO).setScale(2, BigDecimal.ROUND_HALF_UP).toString();
    }

    public void area() {
        BigDecimal r = new BigDecimal(this.radius);
        this.area = PI.multiply(r).multiply(r).setScale(2, BigDecimal.ROUND_HALF_UP).toString();
    }
}
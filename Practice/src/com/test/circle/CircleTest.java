package com.test.circle;

import java.util.Scanner;

public class CircleTest {
    public static void main(String[] args) {
        Circle circle = new Circle();
        System.out.print("Please enter the radius:");
        Scanner scanner = new Scanner(System.in);
        circle.setRadius(scanner.next());
        circle.perimeter();
        circle.area();
        System.out.println(circle.getArea());
        System.out.println(circle.getPerimeter());
    }
}

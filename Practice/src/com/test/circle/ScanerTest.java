package com.test.circle;

import java.util.Scanner;

public class ScanerTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Please enter: ");
        if (sc.hasNext()) {
            System.out.println(sc.next());
        }
    }
}

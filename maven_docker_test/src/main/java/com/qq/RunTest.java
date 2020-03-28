package com.qq;

import org.testng.annotations.Test;


public class RunTest {

    @Test
    public void test() {
        Run run = new Run("Test-Test-Test");
        System.out.println((System.getProperty("environment").toUpperCase()));
    }
}

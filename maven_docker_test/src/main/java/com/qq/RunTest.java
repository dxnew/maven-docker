package com.qq;

import org.testng.annotations.Test;

import static com.qq.config.Environment.CURRENT;

public class RunTest {

    @Test
    public void test() {
        Run run = new Run("Test-Test-Test");
        System.out.println(CURRENT.name());
    }
}

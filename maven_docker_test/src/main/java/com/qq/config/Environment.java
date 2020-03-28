package com.qq.config;

public enum Environment {

    QA,
    UAT;

    public static final Environment CURRENT = valueOf(System.getProperty("environment").toUpperCase());
}

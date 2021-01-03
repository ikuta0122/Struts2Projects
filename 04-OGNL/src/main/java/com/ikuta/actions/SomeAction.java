package com.ikuta.actions;

/**
 * @author Ikuta
 * @date 2020-12-21 9:32
 */
public class SomeAction {
    private String name;
    private int age;

    public SomeAction() {
    }

    public SomeAction(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public String toString() {
        return "SomeAction{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}

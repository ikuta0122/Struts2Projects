package com.ikuta.actions;

/**
 * @author Ikuta
 */
public class LoginAction {
    private String name;
    private int age;

    public LoginAction() {
    }

    public LoginAction(String name, int age) {
        this.name = name;
        this.age = age;
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

    public String execute(){
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        return "success";
    }
}

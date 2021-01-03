package com.ikuta.actions;

/**
 * @author Ikuta
 * @date 2020-12-17 23:00
 */
public class LoginAction {
    private String name;
    private String age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public LoginAction() {
    }

    public LoginAction(String name, String age) {
        this.name = name;
        this.age = age;
    }

    public String execute(){
        return "success";
    }
}

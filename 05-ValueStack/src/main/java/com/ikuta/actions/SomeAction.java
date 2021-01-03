package com.ikuta.actions;

import com.opensymphony.xwork2.util.ValueStack;
import org.apache.struts2.ServletActionContext;

/**
 * @author Ikuta
 * @classname SomeAction
 * @date 2020/12/21 11:43
 * @email 934442950@qq.com
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

    public String execute() {
        //获取值栈对象
        ValueStack valueStack = (ValueStack) ServletActionContext.getRequest().getAttribute(ServletActionContext.STRUTS_VALUESTACK_KEY);
        //向值栈的context中显式放入数据
        valueStack.getContext().put("name", name);
        valueStack.getContext().put("age", age);
        return "success";
    }
}

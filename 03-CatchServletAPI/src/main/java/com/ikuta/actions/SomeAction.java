package com.ikuta.actions;

/**
 * @author Ikuta
 */
public class SomeAction {
    public String execute() {
        /* 第一种方式:通过ActionContext获取ServletAPI
         * 注意事项:获取到的仅仅是这些ServletAPI的域属性空间,而不是真正的ServletAPI
         * ActionContext.getContext().put("request", "request_value");
         * ActionContext.getContext().getSession().put("session", "session_value");
         * ActionContext.getContext().getApplication().put("application", "application_value");
         */
        /* 第二种方式:通过ServletActionContext获取SerAPI
         * ServletActionContext.getRequest().setAttribute("request", "request_value");
         * ServletActionContext.getRequest().getSession().setAttribute("session", "session_value");
         * ServletActionContext.getServletContext().setAttribute("application", "application_value");
         */
        return "success";
    }
}

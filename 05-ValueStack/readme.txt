1.获取值栈ValueStack对象的方式
    1.1 从request中获取ValueStack对象
        ValueStack valueStack = (ValueStack) ServletActionContext.getRequest()
                                .getAttribute(ServletActionContext.STRUTS_VALUESTACK_KEY);
    1.2 从ActionContext中获取ValueStack对象
        ValueStack valueStack = ActionContext.getContext().getValueStack();

2.向值栈的root属性显式放入数据
    2.1 向值栈的root属性中直接放入无名对象
        valueStack.getRoot().push(new Student("张三", 23));
    2.2 向值栈中直接放入无名对象,但实际上也是放入值栈的root属性中
        valueStack.push(new Student("李四", 23));
    2.3 将值栈的root属性当作是ArrayList放入数据
        valueStack.getRoot().add(new Student("田七", 23));
    2.4 向值栈中直接放入有名对象,即map
        Map<String, Student> map = new HashMap<>(16);
        map.put("student", new Student("王五", 23));
        valueStack.push(map);
    2.5 向值栈中直接放入有名对象,即map
        valueStack.set("student", new Student("赵六", 23));

3.向值栈的root属性隐式放入数据
    3.1 Action对象

4.向值栈的context属性显式放入数据
    4.1 valueStack.getContext().put("student",new Student("张三", 23));

5.向值栈的context属性隐式放入数据
    5.1 请求参数
    5.2 Action对象

6.数据的加载顺序
    6.1 request域空间
    6.2 root属性
    6.3 context属性
package cn.seabornlee.java;

import java.util.Arrays;
import java.util.List;

public class TodoService {
    public List<TodoItem> todos() {
        return Arrays.asList(new TodoItem("buy milk", false));
    }

    public List<TodoItem> getDoneList() {
        return Arrays.asList(new TodoItem("push-ups", true));
    }
}

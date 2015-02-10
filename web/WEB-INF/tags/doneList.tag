<%@ taglib prefix="todo" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="todoService" class="cn.seabornlee.java.TodoService"/>
<div class="todolist">
    <h1>Already Done</h1>
    <ul id="done-items" class="list-unstyled">
        <c:forEach items="${todoService.getDoneList()}" var="todoItem">
            <todo:todoItem item="${todoItem}"/>
        </c:forEach>
    </ul>
</div>

<script type="text/javascript">
    //delete done task from "already done"
    $('.todolist').on('click','.remove-item',function(){
        removeItem(this);
    });

    //remove done task from list
    function removeItem(element){
        $(element).parent().remove();
    }
</script>

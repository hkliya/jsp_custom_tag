<%@ taglib prefix="todo" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="todoService" class="cn.seabornlee.java.TodoService"/>

<ul id="sortable" class="list-unstyled">
    <c:forEach items="${todoService.todos()}" var="todoItem">
        <todo:todoItem item="${todoItem}"/>
    </c:forEach>
</ul>

<script type="text/javascript">
    $("#sortable").sortable();
    $("#sortable").disableSelection();

    //mark task as done
    function done(doneItem){
        var done = doneItem;
        var markup = '<li>'+ done +'<button class="btn btn-default btn-xs pull-right  remove-item"><span class="glyphicon glyphicon-remove"></span></button></li>';
        $('#done-items').append(markup);
        $('.remove').remove();
    }
</script>

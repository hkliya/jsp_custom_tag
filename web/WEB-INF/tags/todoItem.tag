<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="item" type="cn.seabornlee.java.TodoItem" %>
<c:choose>
    <c:when test="${item.isCompleted()}">
        <li><%= item.getName()%>
            <button class="remove-item btn btn-default btn-xs pull-right"><span
                class="glyphicon glyphicon-remove"></span></button>
        </li>
    </c:when>
    <c:otherwise>
        <li class="ui-state-default">
            <div class="checkbox">
                <label>
                    <input type="checkbox" value=""/><%= item.getName()%>
                </label>
            </div>
        </li>
    </c:otherwise>
</c:choose>

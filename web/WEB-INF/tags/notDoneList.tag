<%@ taglib prefix="todo" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="todoService" class="cn.seabornlee.java.TodoService"/>
<div class="todolist not-done">
    <h1>Todos</h1>
    <todo:addTodo />
    <todo:markAsDone />
    <hr>
    <todo:todoList/>
    <todo:footer/>
</div>
<script type="text/javascript">
    $('.todolist').on('change','#sortable li input[type="checkbox"]',function(){
        if($(this).prop('checked')){
            var doneItem = $(this).parent().parent().find('label').text();
            $(this).parent().parent().parent().addClass('remove');
            done(doneItem);
            countTodos();
        }
    });

    //mark task as done
    function done(doneItem){
        var done = doneItem;
        var markup = '<li>'+ done +'<button class="btn btn-default btn-xs pull-right  remove-item"><span class="glyphicon glyphicon-remove"></span></button></li>';
        $('#done-items').append(markup);
        $('.remove').remove();
    }
</script>

<div class="todo-footer">
    <strong><span class="count-todos"></span></strong> Items Left
</div>

<script type="text/javascript">
    // count tasks
    function countTodos(){
        var count = $("#sortable li").length;
        $('.count-todos').html(count);
    }

    countTodos();
</script>

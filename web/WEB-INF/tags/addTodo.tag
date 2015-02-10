<input type="text" class="form-control add-todo" placeholder="Add todo">
<script type="text/javascript">
    $('.add-todo').on('keyup', function (e) {
        e.preventDefault();
        if (e.which == 13) {
            if ($(this).val() != '') {
                var todo = $(this).val();
                createTodo(todo);
                countTodos();
            } else {
// some validation
            }
        }
    });

    //create task
    function createTodo(text){
        var markup = '<li class="ui-state-default"><div class="checkbox"><label><input type="checkbox" value="" />'+ text +'</label></div></li>';
        $('#sortable').append(markup);
        $('.add-todo').val('');
    }
</script>

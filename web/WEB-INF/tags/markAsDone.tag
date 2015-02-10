<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<button id="checkAll" class="btn btn-success">Mark all as done</button>

<script type="text/javascript">
    $("#checkAll").click(function(){
        AllDone();
    });

    //mark all tasks as done
    function AllDone(){
        var myArray = [];

        $('#sortable li').each( function() {
            myArray.push($(this).text());
        });

        // add to done
        for (i = 0; i < myArray.length; i++) {
            $('#done-items').append('<li>' + myArray[i] + '<button class="btn btn-default btn-xs pull-right  remove-item"><span class="glyphicon glyphicon-remove"></span></button></li>');
        }

        // myArray
        $('#sortable li').remove();
        countTodos();
    }
</script>

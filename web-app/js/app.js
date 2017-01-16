/**
 * Created by Sanket on 1/14/2017.
 */

angular.module('ToDoApp', ['datatables'])
    .controller('ToDoController', ['$scope', function($scope){

        $scope.changeFilter = function(){

            if($scope.itemFilter == 'Pending'){
                $scope.todoItems = $scope.allTodoItems.filter(function(val){
                    return !val.status;
                })
            } else if($scope.itemFilter == 'Completed'){
                $scope.todoItems = $scope.allTodoItems.filter(function(val){
                    return val.status;
                })
            } else{
                $scope.todoItems = $scope.allTodoItems;
            }
        };

        $scope.changeFilterOriginal = function(){
            $.ajax({
                type: "GET",
                url: "/ToDoApp/note/getNoteList",
                data: { status: $scope.itemFilter },
                async:false,
                success:function(result){
                    console.log(result);
                    $scope.allTodoItems = result;
                    $scope.changeFilter();
                }
            });
        };

        init();
        function init() {
            $scope.todoItems = [];
            $scope.allTodoItems = [];
            $scope.addBtn = true;
            $scope.filterCriteria = ["All", "Completed", "Pending"];
            $scope.itemFilter = $scope.filterCriteria[0];
            $scope.changeFilterOriginal();
        }

        $scope.formatDate = function(date) {
            var dateInLongFormat = Date.parse(date);
            return moment(parseInt(dateInLongFormat)).format('DD/MM/YYYY LT z');
        };

        $scope.addTodoItem = function() {
            var newItem = {
                'noteId' : new Date().getTime(),
                'name': $scope.todoItem.name,
                'createdDate' : new Date(),
                'dueDate' : $scope.todoItem.dueDate,
                'status': false
            };

            $scope.todoItems.push(newItem);

            $.ajax({
                type: "GET",
                url: "/ToDoApp/note/saveNote",
                data: newItem,
                async:false,
                success:function(result){
                    //alert('TODO saved successfully..')
                    $scope.todoItem = {};
                    $scope.changeFilterOriginal();
                }
            });

            $scope.changeFilter();
            $scope.todoItem = {};
        };

        $scope.editTodoItem = function(index) {
            $scope.addBtn = false;
            $scope.todoItem = $scope.todoItems[index];
            var dueDate = $scope.todoItem.dueDate
            var assignDateToDatepicker = moment(parseInt(Date.parse(dueDate))).format('YYYY-MM-DD');
            document.getElementById("dueDate").value = assignDateToDatepicker;
            $scope.index = index;
        };

        $scope.updateTodoItem = function() {
            $.ajax({
                type: "GET",
                url: "/ToDoApp/note/updateNote",
                data: $scope.todoItem,
                async:false,
                success:function(result){
                    //alert('TODO updated successfully..');
                    $scope.addBtn = true;
                    $scope.todoItem = {};
                    $scope.changeFilterOriginal();
                }
            });

        };

        $scope.markAsCompaleted = function(newItem){
            $.ajax({
                type: "GET",
                url: "/ToDoApp/note/markNoteAsCompleted",
                data: {
                    noteId: newItem.noteId,
                    status: newItem.status ? 'Completed' : 'Pending'
                },
                async:false,
                success:function(result){
                    //alert('TODO Marked as ' + (newItem.status ? 'Completed' : 'Pending'))
                }
            });
        };

        $scope.deleteTodoItem = function(index) {
            $.ajax({
                type: "GET",
                url: "/ToDoApp/note/deleteNote",
                data: { noteId: $scope.todoItems[index].noteId },
                async:false,
                success:function(result){
                    $scope.changeFilterOriginal();
                    //alert('TODO deleted..');
                }
            });
        };
    }
]);
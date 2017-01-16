<!doctype html>
<html ng-app="ToDoApp">
<head>
	<title>To-Do App</title>
</head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/dataTables.bootstrap.css">
<link rel="stylesheet" href="css/app.css">

<body>
<div ng-controller="ToDoController">
	<div class="container">
		<h1 class="heading"><strong> TODO App</strong> </h1>
		<div class="todo-app-div">
			<form name="todoForm" class="col-sm-12 todo-form" ng-submit="addTodoItem()">
				<div class="col-sm-5">
					<div class="col-sm-4">
						<label>To Do Note : </label>
					</div>
					<div class="col-sm-8">
						<textarea name="name" class="input-field" placeholder="Write a note here.." ng-model="todoItem.name" required ></textarea>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-4">
						<label> Due Date : </label>
					</div>
					<div class="col-sm-8">
						<input type="date" id="dueDate" name="dueDate" class="input-field-date" ng-model="todoItem.dueDate" required />
					</div>
				</div>
				<div class="col-sm-3">
					<button class="btn btn-primary add-button" ng-disabled="todoForm.$invalid" ng-if="addBtn">Add</button>
					<input class="btn btn-primary add-button" type="button" ng-if="!addBtn" value="Update" ng-click="updateTodoItem()" ><br><br>
				</div>
			</form>
			<div class="todo-list">
				<div class="filter-div">
					<label>Select Filter criteria : </label>
					<select name="itemFilter" id="itemFilter" ng-model="itemFilter" ng-options="filter for filter in filterCriteria"
							ng-change="changeFilterOriginal()">
					</select>
				</div>
				<table table class="table table-striped table-bordered" datatable="ng">
					<thead>
					<tr>
						<th>Status</th>
						<th>To Do Note</th>
						<th>Created Date</th>
						<th>Due Date</th>
						<th>Actions</th>
					</tr>
					</thead>
					<tbody>
					<tr ng-repeat="item in todoItems">
						<td><input type="checkbox" ng-click="markAsCompaleted(item)" ng-model="item.status"></td>
						<td ng-class="{'completedTodo' : item.status}">{{item.name}}</td>
						<td ng-class="{'completedTodo' : item.status}">{{formatDate(item.createdDate)}}</td>
						<td ng-class="{'completedTodo' : item.status}">{{formatDate(item.dueDate)}}</td>
						<td>
							<input type="button" value="Edit" ng-click="editTodoItem($index)"  ng-class="{'completedTodo' : item.status}" ng-disabled="item.completed">
							<input type="button" value="Delete" ng-click="deleteTodoItem($index)"  ng-class="{'completedTodo' : item.status}" ng-disabled="item.completed">
						</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/angular.min.js"></script>
<script src="js/angular-datatables.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/app.js"></script>

</body>
</html>
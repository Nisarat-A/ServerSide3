<%--
  Created by IntelliJ IDEA.
  User: nisarata
  Date: 17/11/2023 AD
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Employee CRUD</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <style>
    body {
      padding: 20px;
      background-color: #f8f9fa;
    }
    h1, h2, h3 {
      color: #007bff;
    }
    table {
      margin-top: 20px;
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #dee2e6;
    }
    th {
      background-color: #007bff;
      color: #ffffff;
    }
    form {
      margin-top: 20px;
    }
  </style>
</head>
<body>
<div class="container">
  <h1 class="mt-4">Employee CRUD</h1>

  <!-- Display Employees Grouped by Branch -->
  <h2 class="mt-4">Employees Grouped by Branch</h2>
  <!-- Add a table to display employee details grouped by branch -->
  <c:forEach var="branch" items="${branches}">
    <h3>${branch.name}</h3>
    <table class="table table-bordered">
      <!-- Table headers -->
      <thead class="thead-light">
      <tr>
        <th>Employee ID</th>
        <th>Name</th>
        <th>Position</th>
        <!-- Add other columns as needed -->
        <th>Actions</th>
      </tr>
      </thead>
      <!-- Loop through employees of the current branch and display them -->
      <tbody>
      <c:forEach var="employee" items="${branch.employees}">
        <tr>
          <td>${employee.id}</td>
          <td>${employee.name}</td>
          <td>${employee.position}</td>
          <!-- Add other columns as needed -->
          <td>
            <a href="EmployeeServlet?action=edit&id=${employee.id}" class="btn btn-primary"><i class="fas fa-edit"></i> Edit</a>
            <a href="EmployeeServlet?action=delete&id=${employee.id}" class="btn btn-danger"><i class="fas fa-trash-alt"></i> Delete</a>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </c:forEach>

  <!-- Form for Adding/Editing Employee -->
  <h2 class="mt-4">Add/Edit Employee</h2>
  <form action="EmployeeServlet" method="post">
    <input type="hidden" name="action" value="${action}">
    <input type="hidden" name="id" value="${employee.id}">
    <!-- Add form fields for employee details (name, position, etc.) -->
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" value="${employee.name}" class="form-control" required>
    </div>

    <div class="form-group">
      <label for="position">Position:</label>
      <input type="text" id="position" name="position" value="${employee.position}" class="form-control" required>
    </div>

    <!-- Add other input fields as needed -->

    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
  </form>
</div>

<!-- Optional: Include Bootstrap JavaScript and FontAwesome JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"></script>
</body>
</html>
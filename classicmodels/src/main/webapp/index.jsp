<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        function testAjax(){
        let xhr = new XMLHttpRequest();
        xhr.onload = function () {
            if (xhr.status != 200) {
                alert("error"+xhr.status); // e.g. 404: Not Found
            } else {
                alert(xhr.response); // responseText is the server
            }
        };
        xhr.open("GET", "hello-servlet");
        xhr.send();}
    </script>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<button onclick="testAjax()">Test Ajax</button>
</body>
</html>
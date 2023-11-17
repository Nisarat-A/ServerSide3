<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        // function testAjax() {
        //     let xhr = new XMLHttpRequest();
        //     xhr.onload = function () {
        //         if (xhr.status != 200) {
        //             alert("error" + xhr.status); // e.g. 404: Not Found
        //         } else {
        //             alert(xhr.response); // responseText is the server
        //         }
        //     };
        //     xhr.open("GET", "hello-servlet");
        //     xhr.send();
        // }

        function loadProduct(page, pageSize = document.getElementById("itemsPage").value) {
            const xhttp = new XMLHttpRequest();
            xhttp.onload = function () {
                if (xhttp.status === 200) {
                    document.getElementById("body-content").innerHTML = xhttp.responseText;
                } else {
                    alert("error" + xhttp.status + " ( " + xhttp.responseText + " )");
                }
            };
        }

        function loadOffice(officeCode) {
            const xhttp = new XMLHttpRequest();
            xhttp.onload = function () {
                if (xhttp.status === 200) {
                    document.getElementById("body-content").innerHTML = xhttp.responseText;
                } else {
                    alert("error" + xhttp.status + " ( " + xhttp.responseText + " )");
                }
            }
            xhttp.open("GET", "office-list?officeCode=" + officeCode);
            xhttp.send();
        }

        // Move these lines outside the onload function
        xhttp.open("GET", "product-list?page=" + page + "&pageSize=" + pageSize);
        xhttp.send();

    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
</head>
<body>
<%----%>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
<%--<button onclick="testAjax()">Test Ajax</button>--%>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand text-warning" href="javascript:void(0)">Classic Model</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse">
            <span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="javascript:loadOffice('')">Office</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:loadProduct(1,15)">Product</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container" id="body-content">
    <h3>SIT-202: Classic Model Online</h3>
    <p>SIT-202 is a global online marketplace. <br>
    <p>SIT-202 is a young and dynamic company specialized in the online
        sale of static collectible models and related accessories. Our location are distributed around the world. <br>
        ... they are popular collectibles for every automobile fan.rs! .. </p>
</div>

</body>
</html>
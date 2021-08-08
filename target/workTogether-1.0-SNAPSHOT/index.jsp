<%--
  Created by IntelliJ IDEA.
  User: supra
  Date: 08/08/2021
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Work, Edit and Share</title>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

    <script>
        tinymce.init({
            selector: '#mytextarea'
        });
    </script>

</head>

<body>
<h1 style="margin: auto">Work, Edit and Share</h1>
<form action="" method="post">
    <textarea id="mytextarea" name="text"><%= request.getAttribute("text")%></textarea>
    <button style="width: 100%; margin-top: 20px">Share!</button>
</form>
</body>
</html>

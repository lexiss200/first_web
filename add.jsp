<%--
  Created by IntelliJ IDEA.
  User: Дмитрий
  Date: 16.01.2019
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new city</title>
</head>
<body>
<div>
    <h1>Добавление нового города!</h1>
</div>

<div>
    <%
        if (request.getAttribute("cityName") != null) {
            out.println("<p>Город '" + request.getAttribute("cityName") + "' добавлен!</p>");
        }
    %>
    <div>
        <div>
            <h2>Добавление города</h2>
        </div>

        <form method="post">
            <label>Название:
                <input type="text" name="name"><br />
            </label>
        <%--
            <label>Password:
                <input type="password" name="pass"><br />
            </label>
        --%>
<button type="submit">Добавить</button>
</form>
</div>
</div>

<div>
<button onclick="location.href='/'">Вернуться назад</button>
</div>
</body>
</html>

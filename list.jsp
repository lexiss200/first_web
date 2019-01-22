<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Дмитрий
  Date: 16.01.2019
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cities list</title>
</head>
<body>
<div>
    <h1>Список городов!</h1>
</div>

<div>
    <div>
        <div>
            <h2>Города</h2>
        </div>
        <%
            List<String> names = (List<String>) request.getAttribute("cityNames");

            if (names != null && !names.isEmpty()) {
                out.println("<ui>");
                for (String s : names) {
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ui>");
            } else out.println("<p>Ещё не добавлено ни одного города!</p>");
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Вернуться назад</button>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 17611
  Date: 2022/5/26
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>" />
    <title>注册学生</title>
</head>
<body>
    <div align="center">
        <form action="student/addStudent.do" method="post">
            <table>
                <tr>
                    <td>姓名：</td>
                    <%-- 注意这里的name，应该和controller中形参Student的属性名一样 --%>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="submit" value="注册"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

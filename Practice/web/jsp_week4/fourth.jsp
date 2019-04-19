<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/18
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单输入验证示例</title>
    <script type="text/javascript">
        function validate() {
            var userName = document.forms[0].userName.value;
            if(userName.length <= 0) alter("用户名不能为空！");
            else {
                alter("验证通过，表单可以提交");
                document.forms[0].submit();
            }
        }
    </script>
</head>
<body bgcolor="#f0ffff">
<div align="center">
    <form action="" method="post">
        <table>
            <tr>
                <td>user:</td>
                <td>
                    <input type="text" name="userName"/>
                </td>
            </tr>
            <tr>
                <td>password: </td>
                <td>
                    <input type="password" name="password"/>
                </td>
            </tr>
            <tr>
                <td>re-enter:</td>
                <td>
                    <input type="password" name="repassword"/>
                </td>
            </tr>
            <tr>
                <td>sex: </td>
                <td>
                    <input type="radio" name="sex" value="男">男
                    <input type="radio" name="sex" value="女">女
                </td>
            </tr>
        </table>
        birthday: <select name="birth">
        <option value="0">- 请选择 -</option>
        <option value="1997">1997</option>
        <option value="1998">1998</option>
        <option value="1999">1999</option>
        <option value="2000">2000</option>
    </select>年<br>
        interest: <input name="habit" type="checkbox" value="1">music
        <input name="habit" type="checkbox" value="2">cartoon<br>
        <input type="button" value="提交" onclick="validate()"/>
        <input type="reset" value="取消">
    </form>
</div>
</body>
</html>

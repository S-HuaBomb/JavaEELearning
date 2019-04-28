<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/26
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册校验器</title>
</head>
<body>
<div align="center">
    <form action="validate.action" method="post">
        <table>
            <caption>注册校验器</caption>
            <tr>
                <td>学号：</td>
                <td><input type="text" name="stu.ID"/> </td>
                <td>
                    <!-- 使用 <S: fielderror fieldName="stu.ID"/> 输入相应的字段错误信息 -->
                    <h3 style="color:red"> <s:fielderror fieldName="stu.ID"/> </h3>
                </td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td>
                    <input type="text" name="stu.name"/>
                </td>
                <td>
                    <s:fielderror fieldName="stu.name"/>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>
                    <input type="radio" name="stu.sex">男
                    <input type="radio" name="stu.sex">女
                </td>
                <td>
                    <s:fielderror fieldName="stu.sex"/>
                </td>
            </tr>
            <tr>
                <td>出生年月日</td>
                <td>
                    <input type="date" name="stu.birth">
                </td>
                <td>
                    <s:fielderror fieldName="stu.birth"/>
                </td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td>
                    <input type="text" name="stu.email"/>
                </td>
                <td>
                    <s:fielderror fieldName="stu.email"/>
                </td>
            </tr>
            <tr>
                <td>专业：</td>
                <td>
                    <input type="text" name="stu.major">
                </td>
                <td>
                    <s:fielderror fieldName="stu.major"/>
                </td>
            </tr>
            <tr>
                <td>总分：</td>
                <td>
                    <input type="text" name="stu.grade"/>
                </td>
                <td>
                    <s:fielderror fieldName="stu.grade"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="提交">
                </td>
                <td></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

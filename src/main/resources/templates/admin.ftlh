<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Panel</title>
</head>
<body>
    <h1>MyStore</h1>
    <h2>Admin Panel</h2>
    <table border="1">
        <tr>
            <th>Email</th>
            <th>Phone number</th>
            <th>Is active</th>
            <th>Role</th>
            <th>Ban</th>
            <th>Edit</th>
            <th>Show more</th>
        </tr>
        <#list users as user>
            <tr>
                <th>${user.email}</th>
                <th>${user.phoneNumber}</th>
                <th>
                    <#if user.active>
                        true<#else>false
                    </#if>
                </th>
                <th>
                    <#list user.roles as role>
                        ${role}<#sep>, 
                    </#list>
                </th>
                <th>
                    <form action="/admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Ban">
                    </form>
                </th>
                <th>
                    <a href="/admin/user/edit/${user.id}">
                        Edit
                    </a>
                </th>
                <th>
                    <a href="/user/${user.id}">
                        Show more
                    </a>
                </th>
            </tr>
            <#else>
            <h3>There are no users</h3>
        </#list>
    </table>
    <form action=""></form>
</body>
</html>
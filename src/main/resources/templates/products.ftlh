<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MyStudio</title>
</head>
<body>
    <h1>MyStudio</h1>
    <hr>
    <#if user.email??>
        <h2>Hello, ${user.name}!</h2>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Log Out">
        </form>
        <#if user.isAdmin()>
            <a href="/admin">Admin panel</a>
        </#if>
        <#else>
            <a href="/login">Log In</a>
    </#if>
    <hr>
    <h4>Hand Made Goods</h4>
    <form action="/" method="get">
        Search by Name: <input type="text" name="title"> <input type="submit" value="Search">
    </form>
    <#list products as product>
        <div>
            <p>
                <b>
                    ${product.title}
                </b>
                    ${product.price}€ |
                <a href="/product/${product.id}">
                    Show more
                </a>
            </p>
        </div>
        <#else>
        <h3>There are no Goods</h3>
    </#list>
    <#if user.email??>
        <hr>
        <h3>Create new Good</h3>
        <form action="/product/create" method="post" enctype="multipart/form-data">
            Name: <input type="text" name="title">
            <br><br>
            Description: <input type="text" name="description">
            <br><br>
            Price: <input type="number" name="price">
            <br><br>
            City: <input type="text" name="city">
            <br><br>
            First Image: <input type="file" name="file1">
            <br><br>
            Second Image: <input type="file" name="file2">
            <br><br>
            Third Image: <input type="file" name="file3">
            <br><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Add">
        </form>
    </#if>
</body>
</html>
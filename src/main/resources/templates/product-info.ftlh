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
    <h1>
        MyStudio
    </h1>
    <hr>
    <h4>Good description</h4>
    <#list images as img>
        <img src="/images/${img.id}" alt="Image" height="60px">
    <br><br>
    </#list>
    <b>Name: </b>${product.title}
    <br><br>
    <b>Description: </b>${product.description}
    <br><br>
    <b>Price: </b>${product.price}
    <br><br>
    <b>City: </b>${product.city}
    <br><br>
    <b>Author: <a href="/user/${product.user.id}">${product.user.name}</a></b>
</body>
</html>
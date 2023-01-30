<!doctype html>
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
    <h2>About the Author ${user.name}</h2>
    <b>Phone number: </b> ${user.phoneNumber}
    <h2>${user.name} goods</h2>
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
        <h3>There are no goods</h3>
    </#list>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</body>
</html>
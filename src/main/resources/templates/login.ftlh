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
    <h4>Authorization</h4>
    <form action="/login" method="post">
        Email: <input type="email" name="username">
        <br><br>
        Password: <input type="password" name="password">
        <br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Log In">
    </form>
    <a href="/registration">Sign Up</a>
</body>
</html>
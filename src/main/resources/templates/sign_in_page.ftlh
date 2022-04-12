<!doctype html>
<html>
<head>
    <title>Authorization</title>
    <link rel="stylesheet" type="text/css">
</head>
<body>
<div>
    <h3>Authorization</h3>
    <#if RequestParameters.error??>
        <div role="alert">
            <strong>error</strong>
        </div>
    </#if>
    <form action="/signIn" method="post">
        <input name="email" type="email" placeholder="EMAIL">
        <input name="password" type="password" placeholder="PASSWORD">
        <input type="submit" value="SIGN IN">
    </form>
    <hr>
    <p><a href="/signUp">Sign Up?</a></p>
</div>
</body>
</html>

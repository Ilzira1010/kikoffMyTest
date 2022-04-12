<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" type="text/css">
</head>
<body>
<h3>Registration</h3>
<form action="/signUp" autocomplete="off" method="post" id="form">
    <div>
        <span>First Name</span>
        <input id="firstName-signup" type="text" name="firstName" required>
    </div>
    <div>
        <span>Surname Name</span>
        <input id="lastName-signup" type="text" name="lastName"
               required>
    </div>
    <div>
        <span>Patronymic</span>
        <input id="patronymic-signup" type="text" name="patronymic"
               required>
    </div>
    <div>
        <span>Email</span>
        <input id="email-signup" type="email" data-verify="email"
               name="email" required>
    </div>
    <div>
        <span>Birthday</span>
        <input id="birthday-signup" type="date" data-verify="birthday"
               name="birthday" required>
    </div>
    <div>
        <span>Password</span>
        <input id="password-signup" type="password" name="password"
               title="Password should consist of latin alphabet and must contains letter with capital case and at list one num"
               required>
    </div>
    <div>
        <span>Repeat password</span>
        <input id="password-rep-signup" type="password"
               name="password-repeat"
               required>
    </div>
    <button id="submit" type="submit">
        Sign Up
    </button>
</form>
<hr>
<p><a href="/signIn">Sign In?</a></p>
</body>
</html>

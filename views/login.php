<?php
    session_start();
    session_unset();
    session_destroy();
    unset($_COOKIE['PHPSESSID']);
	setcookie("PHPSESSID", "", time()-3600, "/");
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Contacts</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <div class="login">
            <h2>Enter Login Info</h3>
            <form method="post" action="index.php">
                <label for="userName">User Name: </label>
                <input type="text" name="userName"><br><br>
                <label for="password">Password: </label>
                <input type="password" name="password"><br><br>
                <input type="submit">
            </form>
        </div>
    </body>
</html>

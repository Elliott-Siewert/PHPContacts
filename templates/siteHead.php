<?php
    include("./../models/loginValidate.php");
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Contacts</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <div class="userControl">
            <h1>Hello <?php echo $user->userName; ?></h1>
            <a href="login.php"><button>Logout</button></a>
            <br>
            <br>
        </div>
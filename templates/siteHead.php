<?php
    include("./../models/loginValidate.php");
?>

<!-- builds the head of each page this should be the first thing included on most pages. -->

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
<?php 
    include("./../templates/siteHead.php");
?>
<!-- this form is used to send an email to all clients -->
<div class="emailForm">
    <h2>Compose E-mail</h2>
    <form method="post" action="./../models/email.php">
        <label for="subject">Subject: </label>
        <input type="text" name="subject"><br>
        <label for="message">Message: </label>
        <textarea name="message" ></textarea><br>
        <input type="submit" value="Send">
    </form><br>
    <a href="index.php">Back</a> 
</div>

<?php include("./../templates/siteFoot.php"); ?>
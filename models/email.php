<?php
    include("loginValidate.php");
    $user = json_decode($_SESSION['user']);
    buildContactArray($user);
    $message = $_POST['message'];
    $subject = $_POST['subject'];
    $mailheaders = "From: $user->userName <$user->userName@nscctruro.ca> \n";
    foreach($contacts as $contact){
        $to = $contact->email;
        mail($to, $subject, $message, $mailheaders);
        echo "mail send to: " . $to;
    }
?>
<br><br><a href="./../views/index.php">Back</a> 
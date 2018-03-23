<?php
    include("./../templates/siteHead.php");
    if(isset($_POST['user'])){
        $user = json_decode($_POST['user']);
    }  else{
        header('Location: ./../views/adminDownload.php');
    }
    if($_POST['user'] == ""){
        header('Location: ./../views/adminDownload.php');
    }
    buildContactArray($user);
    $filename = "./../files/contacts.csv";
    $csv = fopen($filename, "w") or exit("Couldn't create file.");
    foreach($contacts as $contact){
        $row = $contact->firstName . "," . $contact->lastName . "," . $contact->phone . "," . $contact->email . "," . $contact->address . "," . $contact->city . "," . $contact->province . "," . $contact->postal . "," . $contact->birthDay . "\n";
        fwrite($csv, $row) or die("Couldn't write to file.");
    }
    fclose($csv);
?>

<h2>Your file has been prepared</h2>
<a href="./../files/contacts.csv">Download File</a><br>
<a href="adminDownload.php">Back</a>

<?php
    include("./../templates/siteHead.php");
    //get the user for whom to download contacts for.
    if(isset($_POST['user'])){
        $user = json_decode($_POST['user']);
    }  else{
        header('Location: ./../views/adminDownload.php');
    }
    if($_POST['user'] == ""){
        header('Location: ./../views/adminDownload.php');
    }
    buildContactArray($user);
    // create the file
    $filename = "./../files/contacts.csv";
    $csv = fopen($filename, "w") or exit("Couldn't create file.");
    //loop through each contact and append their data to the csv file.
    foreach($contacts as $contact){
        $row = $contact->firstName . "," . $contact->lastName . "," . $contact->phone . "," . $contact->email . "," . $contact->address . "," . $contact->city . "," . $contact->province . "," . $contact->postal . "," . $contact->birthDay . "\n";
        fwrite($csv, $row) or die("Couldn't write to file.");
    }
    fclose($csv);
?>

<h2>Your file has been prepared</h2>
<a href="./../files/contacts.csv">Download File</a><br>
<a href="adminDownload.php">Back</a>

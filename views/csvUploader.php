<?php
    include("./../templates/siteHead.php");
    if(isset($_POST['user'])){
        $user = json_decode($_POST['user']);
    }  else{
        header('Location: ./../views/adminUpload.php');
    }
    if($_POST['user'] == ""){
        header('Location: ./../views/adminUpload.php');
    }

    //get file contects that user uploaded
    $fileContent = file_get_contents($_FILES['file']['tmp_name']);
    $fileContentArray = explode("\n", $fileContent);

    //loop through each entry and save contacts
    foreach($fileContentArray as $row){
        if($row != ""){
            $rowContents = explode(",", $row);
            echo json_encode($rowContents);
            saveContact(0, $rowContents[0], $rowContents[1], $rowContents[2], $rowContents[3], $rowContents[4], $rowContents[5], $rowContents[6], $rowContents[7], date("Ymd" ,strtotime($rowContents[8])), $user->userName);
        }

    }
?>

<h2>Your contacts have been uploaded and assigned to <?php echo $user->userName?></h2>
<a href="adminUpload.php">Back</a>

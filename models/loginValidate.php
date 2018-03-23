<?php
    //this script checkes to see if the user is currently looged in and if not redirects them to the login page.
    session_start();
    include("./../models/db.php");
    if(isset($_SESSION['access'])){
        $access = $_SESSION['access'];
        $user = json_decode($_SESSION['user']);
    } else{
        $access = false;
    }

    if($access == false){
        if(isset($_POST['userName']) && isset($_POST['password'])){
            $userName = $_POST['userName'];
            $password = $_POST['password'];
            $user = validateUser($userName, $password);
            if($user){
                $access = true;
            }
        }
    }
    
    $_SESSION['access'] = $access;
    $_SESSION['user'] = json_encode($user);
    if(!$access){
        header('Location: login.php');
    }
?>
<?php
    // db vars
    
    //local
    // $mysql_user = "root";
    // $mysql_pass = "";
    // $mysql_host = "localhost";
    // $db_name = "contact";

    //cpanel
    $mysql_user = "siewerte_contact";
    $mysql_pass = "P@ssword";
    $mysql_host = "db.nscctruro.ca";
    $db_name = "siewerte_contact";
    $contacts = [];
    $users = [];

    
    

    //sql statements
    $queryContactSql = "SELECT * FROM tbl_contact WHERE assignedRep=?";
    $createContactSql = "INSERT INTO tbl_contact (firstName, lastName, phone, email, address, city, province, postal, birthDay, assignedRep) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $updateContactSql = "UPDATE tbl_contact SET firstName=?, lastName=?, phone=?, email=?, address=?, city=?, province=?, postal=?, birthDay=?, assignedRep=? WHERE Id=?";
    $deleteContactSql = "DELETE FROM tbl_contact WHERE Id=?";
    $getUserSql = "SELECT * FROM tbl_user WHERE userName=?";
    $getAllUsersSql = "SELECT * FROM tbl_user";

    function openConnection(){
        global $mysql_host, $mysql_user, $mysql_pass, $db_name;
        $connection = new mysqli($mysql_host, $mysql_user, $mysql_pass, $db_name);
        if ($connection->connect_error) {
            $connection =  null;
            echo $connection->connect_error;
        }
        return $connection;
    }   

    function closeConnection($connection){
        mysqli_close($connection);
        $connection = null;
    }

    function buildContactArray($user){
        global $queryContactSql, $contacts;
        $connection = openConnection();
        $stmt = mysqli_prepare($connection, $queryContactSql);
        mysqli_stmt_bind_param($stmt, "s", $user->userName);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $Id, $firstName, $lastName, $phone, $email, $address, $city, $province, $postal, $birthDay, $assignedRep);
        while(mysqli_stmt_fetch($stmt)){
            $newContact = new Contact($Id, $firstName, $lastName, $phone, $email, $address, $city, $province, $postal, $birthDay, $assignedRep);
            $contacts[] = $newContact;
        }
        mysqli_stmt_close($stmt);
        closeConnection($connection);
    }

    function buildUserArray(){
        global $getAllUsersSql, $users;
        $connection = openConnection();
        $stmt = mysqli_prepare($connection, $getAllUsersSql);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $userName, $hash,$admin);
        while(mysqli_stmt_fetch($stmt)){
            $newUser = new User($userName, $admin);
            $users[] = $newUser;
        }
        mysqli_stmt_close($stmt);
        closeConnection($connection);
    }

    function saveContact($Id, $firstName, $lastName, $phone, $email, $address, $city, $province, $postal, $birthDay, $assignedRep){
        global $createContactSql, $updateContactSql;
        $connection = openConnection();
        if($Id == 0){
            $stmt = mysqli_prepare($connection, $createContactSql);
            mysqli_stmt_bind_param($stmt, "ssssssssds", $firstName, $lastName, $phone, $email, $address, $city, $province, $postal, $birthDay, $assignedRep);
            echo mysqli_error($connection);
        } else{
            $stmt = mysqli_prepare($connection, $updateContactSql);
            mysqli_stmt_bind_param($stmt, "ssssssssdsi", $firstName, $lastName, $phone, $email, $address, $city, $province, $postal, $birthDay, $assignedRep, $Id);
        }
        mysqli_stmt_execute($stmt);
        echo mysqli_error($connection);
        mysqli_stmt_close($stmt);
        closeConnection($connection);
    }

    function deleteContact($Id){
        global $deleteContactSql;
        $connection = openConnection();
        $stmt = mysqli_prepare($connection, $deleteContactSql);
        mysqli_stmt_bind_param($stmt, "i", $Id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
        closeConnection($connection);
    }

    //validate user login info against what is in the database
    function validateUser($userName, $password){
        global $getUserSql;
        $return = false;
        $connection = openConnection();
        $stmt = mysqli_prepare($connection, $getUserSql);
        echo mysqli_error($connection);
        mysqli_stmt_bind_param($stmt, "s", $userName);
        echo mysqli_error($connection);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $userName, $storedHash, $admin);
        mysqli_stmt_fetch($stmt);
        if(password_verify($password, $storedHash)){
            $return = new User($userName, $admin);
        }
        mysqli_stmt_close($stmt);
        closeConnection($connection);
        return $return;
    }

    class User{
        public $userName;
        public $admin;

        public function __construct($userName, $admin){
            $this->userName = $userName;
            $this->admin = $admin;
        }
    }

    class Contact{
        public $Id;
        public $firstName;
        public $lastName;
        public $phone;
        public $email;
        public $address;
        public $city;
        public $province;
        public $postal;
        public $birthDay;
        public $assignedRep;

        public function __construct($Id, $firstName, $lastName, $phone, $email, $address, $city, $province, $postal, $birthDay, $assignedRep){
            $this->Id = $Id;
            $this->firstName = $firstName;
            $this->lastName = $lastName;
            $this->phone = $phone;
            $this->email = $email;
            $this->address = $address;
            $this->city = $city;
            $this->province = $province;
            $this->postal = $postal;
            $this->birthDay = $birthDay;
            $this->assignedRep = $assignedRep;
        }
    }

    //------------- process the request ---------
    // if the request was a GET request to save or delete, process it.
    if(isset($_GET['action'])){
        $action = $_GET['action'];
        $Id = $_GET['Id'];
        if($action == 'save'){
            $firstName = $_GET['firstName'];
            $lastName = $_GET['lastName'];
            $phone = $_GET['phone'];
            $email = $_GET['email'];
            $address = $_GET['address'];
            $city = $_GET['city'];
            $province = $_GET['province'];
            $postal = $_GET['postal'];
            $birthDayInput = $_GET['birthDay'];
            $birthDay = date("Ymd" ,strtotime($birthDayInput));
            $assignedRep = $_GET['assignedRep'];
            saveContact($Id, $firstName, $lastName, $phone, $email, $address, $city, $province, $postal, $birthDay, $assignedRep);
        } else if($action == 'delete'){
            deleteContact($Id);
        }
        header('Location: ./../views/index.php');
    } 






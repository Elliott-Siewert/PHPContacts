<?php 
    include("./../templates/siteHead.php");
    buildContactArray($user);
    if(isset($_GET['filterBirthDays'])){
        $filterBirthDays = $_GET['filterBirthDays'];
    } else{
        $filterBirthDays = "false";
    }
    
?>
<div class="title">
    <?php 
        if($user->admin == 1){
            echo '<a href="adminUpload.php"><button>Upload CSV</button></a>';
            echo '<a href="adminDownload.php"><button>Download CSV</button></a>';
        }
    ?>
    <h3>Contacts</h3>
    <a href="contact.php"><button>Add New Contact</button><a>
    <a href="sendEmail.php"><button>Email all contacts</button></a>
    <?php
        if($filterBirthDays == "true"){
            echo '<h3>Viewing contacts who have have a birthday this month</h3>';
            echo '<a href="index.php?filterBirthDays=false">View All Contacts<a>';
        } else{
            echo '<h3>Viewing all contacts</h3>';
            echo '<a href="index.php?filterBirthDays=true">Filter by birthday<a>';
        }

    ?>

</div>
<div class="contacts">
    <table cellpadding="10px" class="contacts__table">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
            <th>City</th>
            <th>Province</th>
            <th>Postal Code</th>
            <th>Birth Day</th>
        </tr>
        <?php
        
            if($filterBirthDays == "true"){
                foreach($contacts as $contact){
                    if(($contact->assignedRep == $user->userName) && (date("m", strtotime($contact->birthDay)) === date("m"))){
                        echo "<tr><td>$contact->firstName</td> <td>$contact->lastName</td> <td>$contact->phone</td> <td>$contact->email</td> <td>$contact->address</td> <td>$contact->city</td> <td>$contact->province</td> <td>$contact->postal</td> <td>$contact->birthDay</td> <td><a href=\"contact.php?contact=" . urlencode(json_encode($contact)) . "\">Update Contact</a></td> <td><a href=\"./../models/db.php?action=delete&Id=$contact->Id\">Delete Contact</a></td></tr>";
                    }
                }
            } else{
                foreach($contacts as $contact){
                    if($contact->assignedRep == $user->userName){
                        echo "<tr><td>$contact->firstName</td> <td>$contact->lastName</td> <td>$contact->phone</td> <td>$contact->email</td> <td>$contact->address</td> <td>$contact->city</td> <td>$contact->province</td> <td>$contact->postal</td> <td>$contact->birthDay</td> <td><a href=\"contact.php?contact=" . urlencode(json_encode($contact)) . "\">Update Contact</a></td> <td><a href=\"./../models/db.php?action=delete&Id=$contact->Id\">Delete Contact</a></td></tr>";
                    }
                }
            }
        ?>
    </table>
    <br>
    <br>
</div>
    
<?php include("./../templates/siteFoot.php"); ?>
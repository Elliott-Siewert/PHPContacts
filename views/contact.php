<?php 
    include("./../templates/siteHead.php");
    if(isset($_GET['contact'])){
        $contact = json_decode(urldecode($_GET['contact']));
    } else{
        $contact = new Contact(0, "", "", "", "", "", "", "", "", "", "");
    }
?>



<div class="newContact">
    <h2>Enter Contact Info</h3>
    <form method="get" action="./../models/db.php?action=save">
        <label for="firstName">First Name: </label>
        <input type="text" name="firstName" placeholder="First Name" value=<?php echo $contact->firstName ;?>><br>
        <label for="lastName">Last Name: </label>
        <input type="text" name="lastName" placeholder="Last Name" value=<?php echo $contact->lastName ;?>><br>
        <label for="phone">Phone Number: </label>
        <input type="text" name="phone" placeholder="Phone Number" value=<?php echo $contact->phone ;?>><br>
        <label for="email">Email Address: </label>
        <input type="text" name="email" placeholder="Email" value=<?php echo $contact->email ;?>><br>
        <label for="address">Street Address: </label>
        <input type="text" name="address" placeholder="Street Address" value=<?php echo $contact->address ;?>><br>
        <label for="city">City: </label>
        <input type="text" name="city" placeholder="City" value=<?php echo $contact->city ;?>><br>
        <label for="province">Province: </label>
        <input type="text" name="province" placeholder="Province" value=<?php echo $contact->province ;?>><br>
        <label for="postal">Postal Code: </label>
        <input type="text" name="postal" placeholder="Postal Code" value=<?php echo $contact->postal ;?>><br>
        <label for="birthDay">Birth Day: </label>
        <input type="date" name="birthDay" placeholder="Birth Day" value=<?php echo $contact->birthDay ;?>><br><br>
        <input type="hidden" name="assignedRep" value="<?php echo $user->userName ;?>">
        <input type="hidden" name="action" value="save">
        <input type="hidden" name="Id" value=<?php echo $contact->Id ;?>>
        <input type="submit" value="submit">
        
    </form> 
</div>

<?php include("./../templates/siteFoot.php"); ?>

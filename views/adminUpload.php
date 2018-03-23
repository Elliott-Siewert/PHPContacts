<?php
    include("./../templates/siteHead.php");
    buildUserArray();
?>

<div>
    <form method="post" action="csvUploader.php" enctype="multipart/form-data">
        <label for="user">Select sales rep to assign contacts to:</label>
        <select name="user">
            <option selected value="">-------------</option>
            <?php
                foreach($users as $user){
                    echo "<option selected value=" . json_encode($user) . ">$user->userName</option>";
                }
            ?>
        </select><br>
        <label for="file">Select file(CSV) containing contact info:</label>
        <input type="file" name="file"><br>
        <input type="submit">
    </form><br>
    <a href="index.php">Back</a>    
</div>

<?php include("./../templates/siteFoot.php"); ?>
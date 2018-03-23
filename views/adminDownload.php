<?php
    include("./../templates/siteHead.php");
    buildUserArray();
?>

<div>
    <form method="post" action="csvDownloader.php">
        <label for="user">Select sales rep to download data for:</label>
        <select name="user">
            <option selected value="">-------------</option>
            <?php
                foreach($users as $user){
                    echo "<option selected value=" . json_encode($user) . ">$user->userName</option>";
                }
            ?>
        </select>
        <input type="submit">
    </form><br>
    <a href="index.php">Back</a>
</div>

<?php include("./../templates/siteFoot.php"); ?>
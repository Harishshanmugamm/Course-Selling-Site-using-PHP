<?php 
include 'config.php';
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: admin_login.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css">
    <link rel="stylesheet" type="text/css" href="admin_Page_style.css">
    <title>Admin Dashboard</title>
</head>
<body>
<?php include 'admin_header.php' ?>

<!--admin Dashboard section starts -->

<section class="dashboard">

    <h1 class="title">Rolex Dashboard</h1>

    <div class="box-container">

        <div class="box">
           
            <?php
                $total_pend = 0;
                $select_pend = mysqli_query($conn, "SELECT total_price FROM `orders` WHERE payment_status = 'pending'") or die('query failed');
        
                if(mysqli_num_rows($select_pend) > 0){
                while($fetch_pending = mysqli_fetch_assoc($select_pend)){
                $total_price=$fetch_pending['total_price'];
                $total_pend = $total_pend + $total_price;};
                };
            ?>
        
            <h3>₹<?php echo $total_pend; ?></h3>
            <p>Payments Pendings</p>
            <?php
                $total_comp = 0;
                $select_comp = mysqli_query($conn, "SELECT total_price FROM `orders` WHERE payment_status = 'completed'") or die('query failed');
        
                if(mysqli_num_rows($select_comp) > 0){
                while($fetch_completed = mysqli_fetch_assoc($select_comp)){
                $total_price=$fetch_completed['total_price'];
                $total_comp= $total_comp + $total_price;

                };
                };
            ?>
        
            <h3>₹<?php echo $total_comp; ?></h3>
            <p>Payments Recieved</p>
            <div class="box">
                <?php 
                    $select_ord = mysqli_query($conn, "SELECT * FROM `orders`") or die('query failed');
                    $no_of_ord = mysqli_num_rows($select_ord);
                ?>
                <h3><?php echo $no_of_ord; ?></h3>
                <p>Order Placed</p>
             </div>

            <div class="box">
                <?php 
                    $select_prod = mysqli_query($conn, "SELECT * FROM `products`") or die('query failed');
                    $n0_of_prod = mysqli_num_rows($select_prod);
                ?>
                <h3><?php echo $n0_of_prod; ?></h3>
                <p>Products Added</p>
            </div>
            <div class="box">
                <?php 
                $select_users = mysqli_query($conn, "SELECT * FROM `users`") or die('query failed');
                $no_of_users = mysqli_num_rows($select_users);
                ?>
                <h3><?php echo $no_of_users; ?></h3>
                <p>Users</p>
            </div>
            <div class="box">
                <?php 
                $select_admins = mysqli_query($conn, "SELECT * FROM `admin`") or die('query failed');
                $n0_of_admins = mysqli_num_rows($select_admins);
                ?>
                <h3><?php echo $n0_of_admins; ?></h3>
                <p>Admins</p>
            </div>
            <div class="box">
                <?php 
                $select_use = mysqli_query($conn, "SELECT * FROM `users`") or die('query failed');
                $n0_of_use = mysqli_num_rows($select_use);
                $select_ad = mysqli_query($conn, "SELECT * FROM `admin`") or die('query failed');
                $n0_of_ad = mysqli_num_rows($select_ad);
                $number_of_acc= $n0_of_use + $n0_of_ad
                 ?>
                <h3><?php echo $number_of_acc  ; ?></h3>
                <p>Total Accounts</p>
            </div>
            <!-<div class="box">
                <?php 
                    $select_messages = mysqli_query($conn, "SELECT * FROM `message`") or die('query failed');
                     $number_of_messages = mysqli_num_rows($select_messages);
                ?>
                <h3><?php echo $number_of_messages; ?></h3>
                <p>new messages</p>
                </div>
            

            

        </div>
    </div>
</section>


















<script src="js/admin_script.js"></script>

</body>
</html>
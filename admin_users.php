<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['username'];

if(!isset($admin_id)){
   header('location:admin_login.php');
}

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `users` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_users.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Users</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="Admin_page_style.css">

</head>
<body>
   
<?php include 'admin_header.php'; ?>

<section class="users">

   <h1 class="title"> User Accounts </h1>

   <div class="box-container">
      <?php
         $select_users = mysqli_query($conn, "SELECT * FROM `users`") or die('query failed');
         while($fetch_users = mysqli_fetch_assoc($select_users)){
      ?>
      <div class="box">
         <h3>User</h3>
         <p> User_Id : <span><?php echo $fetch_users['id']; ?></span> </p>
         <p> Username : <span><?php echo $fetch_users['username']; ?></span> </p>
         <p> Email : <span><?php echo $fetch_users['email']; ?></span> </p>
         <a href="admin_users.php?delete=<?php echo $fetch_users['id']; ?>" onclick="return confirm('delete this user?');" class="delete-btn">Delete User</a>
      </div>
      <?php
         };
      ?>
   </div>
   <div class="box-container">
      <?php
         $select_admin = mysqli_query($conn, "SELECT * FROM `admin`") or die('query failed');
         while($fetch_admin = mysqli_fetch_assoc($select_admin)){
      ?>
      <div class="box">
         <h3>Admin</h3>
         <p> User_Id : <span><?php echo $fetch_admin['id']; ?></span> </p>
         <p> Username : <span><?php echo $fetch_admin['username']; ?></span> </p>
         <p> Email : <span><?php echo $fetch_admin['email']; ?></span> </p>
         <a href="admin_users.php?delete=<?php echo $fetch_admin['id']; ?>" onclick="return confirm('Delete This Admin?');" class="delete-btn">Delete Admin</a>
      </div>
      <?php
         };
      ?>
   </div>

</section>









<!-- custom admin js file link  -->
<script src="js/admin_script.js"></script>

</body>
</html>
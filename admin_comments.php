<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['username'];

if(!isset($admin_id)){
   header('location:admin_login.php');
};

if(isset($_POST['add_your_comment'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = $_POST['email'];
   $comment = $_POST['comments'];

   $add_comment = mysqli_query($conn, "INSERT INTO `comment`(name, email, comments) VALUES('$name', '$email', '$comment')") or die('query failed');

}

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `comment` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_comments.php');
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Admins Comments</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="Admin_page_style.css">

</head>
<body>
   
<?php include 'admin_header.php'; ?>

<section class='add-your-comment'>

   <h1 class="title">Add Your Comment</h1>

   <form action="" method="post" enctype="multipart/form-data">
      <h3>Type Your Comments</h3>
      <input type="text" name="name" class="box" placeholder="Enter the Name" required>
      <input type="email" name="email" class="box" placeholder="Enter your Email " required>
      <input type="text" name="comments" class="box" placeholder="Enter your Comment " required>
      <input type="submit" value="add comment" name="add_your_comment" class="btn">
   </form>

</section>

<section class="Comments">

   <h1 class="title"> Admins Comments </h1>

   <div class="box-container">
   <?php
      $select_message = mysqli_query($conn, "SELECT * FROM `comment`") or die('query failed');
      if(mysqli_num_rows($select_message) > 0){
         while($fetch_message = mysqli_fetch_assoc($select_message)){
      
   ?>
   <div class="box">
      <p> User Id : <span><?php echo $fetch_message['user_id']; ?></span> </p>
      <p> Name : <span><?php echo $fetch_message['name']; ?></span> </p>
      <p> Email : <span><?php echo $fetch_message['email']; ?></span> </p>
      <p> message : <span><?php echo $fetch_message['comments']; ?></span> </p>
      <a href="admin_comments.php?delete=<?php echo $fetch_message['id']; ?>" onclick="return confirm('Delete This Message?');" class="delete-btn">Delete Message</a>
   </div>
   <?php
      };
   }else{
      echo '<p class="empty">You Have No Messages!</p>';
   }
   ?>
   </div>

</section>









<!-- custom admin js file link  -->
<script src="js/admin_script.js"></script>

</body>
</html>
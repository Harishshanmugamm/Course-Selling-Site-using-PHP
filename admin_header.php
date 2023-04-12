<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>

<header class="header">

   <div class="flex">

      <a href="admin_page.php" class="logo">Admin<span>ControlPanel</span></a>

      <nav class="navbar">
         <a href="admin_page.php">Home</a>
         <a href="products.php">Products</a>
         <a href="admin_orders.php">Orders</a>
         <a href="admin_users.php">Users</a>
         <a href="admin_comments.php">Contact</a>
      </nav>

      <div class="icons">
         <div id="menu-btn" class="fa-solid fa-bars"></div>
         <div id="user-btn" class="fa-solid fa-user"></div>
      </div>

      <div class="account-box">
         <p>username : <span><?php echo $_SESSION['username']; ?></span></p>
         <a href="logout.php" class="delete-btn">logout</a>

      </div>

</header>
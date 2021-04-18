<?php 
	include 'header.php';
	// include 'inc/slider.php';
?>

<?php
   
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        
        $insertCustomers = $cs->insert_customers($_POST);
        
    }
?>
<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
        
        $login_Customers = $cs->login_customers($_POST);
        
    }
?>
 <div class="main">
    <div class="content">
    	 <div class="login_panel">
        	<h3>Đăng Nhập</h3>
        	<p><a href="signup.php">Đăng ký</a> nếu chưa có tài khoản</p>
        	<?php
			if(isset($login_Customers)){
    			echo $login_Customers;
    		}
        	?>
        	<form action="" method="post">
                	<input  type="text" name="email" class="field" placeholder="Enter Email....">
                    <input  type="password" name="password" class="field"  placeholder="Enter Password...." >
                 
                 <p class="note"><a href="#">Quên mật khẩu</a></p>
                    <div class="buttons btn btn-lg"><div><input type="submit" name="login" class="grey" value="Đăng Nhập"></div></div>
             </form>
          </div>
         <?php

         ?> 
    	
       <div class="clear"></div>
    </div>
 </div>
<?php 
	include 'footer.php';
	
 ?>

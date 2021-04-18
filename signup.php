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
    	<div class="register_account">
    		<h3>Đăng Ký Tài Khoản Mới</h3>
    		<?php
    		if(isset($insertCustomers)){
    			echo $insertCustomers;
    		}
    		?>
    		<form action="" method="POST">
		   			 <table>
		   				<tbody>
						<tr>
						<td>
							<div>
							<input type="text" name="name" placeholder="Enter Name..." >
							</div>
							
							<div>
								<input type="text" name="email"  placeholder="Enter Email..."  >
							</div>
							<div>
								<div>
									<input type="text" name="password"  placeholder="Enter Password..." >
								</div>
				
		    			 </td>
		    			<td>
						<div>
							<input type="text" name="address"  placeholder="Enter Address..."  >
						</div>
		    		<div>
				 </div>		        
	
		           <div>
		          <input type="text" name="phone"  placeholder="Enter Phone..." >
		          </div>
		    	</td>
		    </tr> 
		    </tbody></table> 
		   <div class="search"><div><input type="submit" name="submit" class="grey" value="Đăng Ký"></div></div>
		    <div class="clear"></div>
		    </form>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php 
	include 'footer.php';
	
 ?>

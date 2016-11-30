<?php require('template/header.php') ;?>
<div class="container">
   <div class="row">
      <div class="col-md-2">
         <div class="row"><?php require('template/theme.php');?></div>
         <div class="row"> <?php require('template/material.php');?></div>
         <div class="row"><?php require('template/provider.php');?></div>
      </div>

      <div class="col-md-10">
         <div class="panel panel-success ">
   <div class="panel-heading">
      <h3 class="panel-title">Chi tiết sản phẩm</h3>
   </div>
   <div class="panel-body">
   		<table>
   			<tr>
   				<td>
   					<img src="asset/img/product/<?php echo $pid?>.jpg" alt="" width="300" height="300"/>
   				</td>
   				<td>
	   				<table>
	   					<tr>
	   						<td>Tên:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product['tensp'].'</em></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Loại:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product_loaisp['tenloai'].'</em></h4></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Kích thước:</td>
	   						<td><?php echo'<p><h4><em>'.$detail_product['kichthuoc'].'</em></h4></p>' ?></td>
	   					</tr>
	   					<tr>
	   						<td>Chất liệu:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product_chatlieu['tencl'].'</em></h4></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Nhà cung cấp:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product_ncc['tenncc'].'</em></h4></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Tình trạng:</td>
	   						<td><?php echo '<p><h4><em>'.$tinhtrang.'</em></h4></p>'?></td>
	   					</tr>
	   				</table>
   				</td>
   			</tr>

   			<tr>
   				<td><br><a class="btn btn-warning" href="index.php?controller=cart&amp;action=add&amp;pid=<?php echo $pid ;?>"><i class="glyphicon glyphicon-shopping-cart"></i>Thêm Vào Giỏ</a></td>
   			</tr>
   		</table>
   </div>
   <div class="panel-footer">
      <div class="text-center">
         <?php echo 'bla'?>
      </div>
   </div>
</div>
      </div>
   </div>
</div>
<?php require('template/footer.php')?>
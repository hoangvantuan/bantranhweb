<?php require('template/header.php'); ?>
<div class="container">
   	<div class="row">
    		<div class="panel panel-info">
         		<div class="panel-heading">
            		<h3 class="panel-title"><i class="glyphicon glyphicon-user"></i>&nbspThông tin tài khoản</h3>
         		</div>
        	<div class="panel-body">
          		<div class="col-md-6">
              <div>
					<div class="row">
				      	<div class="col-md-3"><label>Tài Khoản :</label></div>
				      	<div class="col-md-4"><em><?php echo $user1['taikhoan'] ?></em></div>
				   	</div>
					<div class="row">
				      	<div class="col-md-3"><label>Cấp độ :</label></div>
				      	<div class="col-md-4"><em><?php echo $user1['capdo'] ?></em></div>
				   	</div>           		
					<div class="row">
				      	<div class="col-md-3"><label>Họ Tên :</label></div>
				      	<div class="col-md-4"><em><?php echo $user['tenkh'] ?></em></div>
				   	</div>
				   	<div class="row">
				    	<div class="col-md-3"><label>Email :</label></div>
				      	<div class="col-md-4"><em><?php echo $user['email'] ?></em></div>
				   	</div>
				   	<div class="row">
				      	<div class="col-md-3"><label>Địa chỉ :</label></div>
				      	<div class="col-md-4"><em><?php echo $user['diachi'] ?></em></div>
				   	</div>
				   	<div class="row">
				      	<div class="col-md-3"><label>SĐT :</label></div>
				      	<div class="col-md-4"><em><?php echo $user['sdt'] ?></em></div>
				   	</div> 
            </div>
            <div>
                <a href="#" data-toggle="modal" data-target="#updateuser">
                 Cập nhật
                </a>
            </div>    
          		</div>
         	</div>
      	</div>
    		<div class="panel panel-info">
         		<div class="panel-heading ">
            		<h3 class="panel-title"><i class="glyphicon glyphicon-retweet"></i>&nbspGiao dịch</h3>
         		</div>
         		<table class="table table-striped table-hover">
         			<tr>
         				<td>Ngày</td>
         				<td>Sản phẩm</td>
         				<td>Hình ảnh</td>
         				<td>Số lượng</td>
         				<td>Tình trạng</td>
         			</tr>
         		
          			<?php 
          				if ($bill!=null) {
          					foreach ($bill as $key => $value) {
          						$bill_info = $getData_model->get_all_record('chitietdh','madh',$value['madh'],'*');
          						foreach ($bill_info as $key1 => $value1) {
          							echo '<tr><td><em>'.$value['ngaylap'].'</em></td>';
          							$sp_info = $getData_model->get_a_record('sanpham','masp',$value1['masp']);
          							echo '<td><em>'.$sp_info['tensp'].'</em></td>';
          							echo '<td>';
          							$image = 'asset/img/product/'.$sp_info['masp'].'.jpg';
          							echo '<image src="'.$image.'" style="max-width:50px; max-height:50px;" />';
          							echo '</td>';
          							echo '<td>'.$value1['sl'].'</td>';
          							echo '<td>'.$value['trangthai'].'</td>';
          						}

          					}
          				}
          			?>
          		</tr>
				</table>		     
      		</div>  	
   	</div>
</div>


<?php require('template/footer.php');?>
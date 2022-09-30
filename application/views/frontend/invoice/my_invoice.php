<style>
body{
	background-color: #e9ecef
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    border: 1px solid rgba(0, 0, 0, .05);
    background-color: #fff;
    background-clip: border-box;
    border-radius: 20px;
    padding-top: 10px;
    padding: 30px;
}
.text-danger-m1 {
    color: #dd4949!important;
}
.text-primary-m1 {
    color: #4087d4!important;
}
.btn {
    font-size: .875rem;
    position: relative;
    transition: all .15s ease;
    letter-spacing: .025em;
    text-transform: none;
    will-change: transform;
}
table.customTable.invoiceTable th{
	background-color: #5e72e4!important;
	color: #fff!important;
}
td p{
	text-transform: capitalize;
}
.orderQr img {
    height: 100px;
    width: 100px;
    margin: 0 auto;
    text-align: center;
    margin-top: 5px;
    margin-left: 28px;
}

.orderQr {
    width: 100%;
    margin: 0 auto;
    text-align: center;
    margin-top: -37px;
}
</style>
<div class="container">
	<div class="page-content">
		<div class="page-header text-blue-d2">
			<h1 class="display-4"></h1>
			<div class="page-tools">
				
				<div class="action-buttons no-print">
					<?php if(check()==1): ?>
						<a href="javascript:;" id="pos-print" class="btn bg-white btn-light mx-1px text-95"  data-title="Print">
							<i class="mr-1 fa fa-print text-primary-m1 text-120 w-2"></i>
							<?= !empty(lang('pos_print'))?lang('pos_print'):"POS Print" ;?>
						</a>
					<?php endif;?>

					<a href="javascript:;" id="printBtn" class="btn bg-white btn-light mx-1px text-95"  data-title="Print">
						<i class="mr-1 fa fa-print text-primary-m1 text-120 w-2"></i>
						<?= !empty(lang('print'))?lang('print'):"Print" ;?>
					</a>
					<?php if(check()==1): ?>
						<a id="exportBtn" href="javascript:;" class="btn bg-white btn-light mx-1px text-95"  data-title="PDF">
							<i class="mr-1 fa fa-file-pdf-o text-danger-m1 text-120 w-2"></i>
							<?= !empty(lang('export'))?lang('export'):"Export" ;?>
						</a>
					<?php endif;?>
				</div>
			</div>
		</div>
		<div class="card" id="print_area">
			<div class="row mt-4">
				<div class="col-12 col-lg-12">

					<div class="row">
						<div class="col-8">
							<h4><?= lang('order_id'); ?> #<?= $order_info['uid'];?> </h4>
							<?php if($order_info['order_type']==5): ?>
								<span class="badge badge-success"><?= lang('paid'); ?></span>
							<?php endif;?>

							<small class="text-muted"><?= full_date($order_info['created_at']);?></small><br />
							<small class="text-muted"><?= lang('order_type'); ?>: <?= order_type($order_info['order_type']) ;?>
								
								<?php if($order_info['order_type'] == 4): ?>
								 , <?= cl_format(!empty($order_info['pickup_date'])?$order_info['pickup_date']:$order_info['created_at']) ;?> : <?= $order_info['pickup_time'] ;?>
								<?php endif;?>
							</small>
						</div>
						<div class="col-md-4">
							<div class="orderQr">
								<img src="<?= base_url($order_info['qr_link']); ?>" alt="">
							</div>
						</div>

					</div>
					<hr />
					<div class="row">
						<div class="col-sm-6">
							<div class="customerInfo">
								<p class="text-muted"><b><?= !empty(lang('customer_info'))?lang('customer_info'):"Customer Info" ;?></b> </p>
								<h3><?= $order_info['name'];?></h3>
								<p><?= lang('phone'); ?> : <?= $order_info['phone'];?></p>
								<?php if(!empty($order_info['address'])): ?>
				                    <p><?= lang('address'); ?> : <?= $order_info['address'];?></p>
				                <?php endif;?>
								
							</div>
						</div>
						<!-- /.col -->

						<div class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">

							<div class="customerInfo">
								<h2><?= !empty($shop->name)?$shop->name:$shop->username;?></h2>
								<p>
									<?= lang('phone'); ?> : <?= !empty($shop->phone)?$shop->phone:"";?>
									<br />
									<?= lang('email'); ?> : <?= !empty($shop->email)?$shop->email:"";?>
									<br />
									<?php if(!empty($shop->address)): ?>
					                    <?= lang('address'); ?> : <?= !empty($shop->address)?$shop->address:"";?>
					                    <br />
					                <?php endif;?>
								</p>
							</div>


						</div>
						<!-- /.col -->
					</div>

					<div class="mt-4">

						<div class="table-responsive">
							<table class="table customTable invoiceTable" id="example1">
								<thead >
									<tr class="text-600 text-white bgc-default-tp1 py-25">
										<th>#</th>
										<th><?= lang('name'); ?></th>
										<th><?= lang('qty'); ?></th>
										<th><?= !empty(lang('unit_price'))?lang('unit_price'):"Unit Price"; ?></th>
										<th><?= !empty(lang('amount'))?lang('amount'):"Amount"; ?></th>
									</tr>
								</thead>
								<tbody>
									<?php $shop_id = $order_info['shop_id']; ?>
									<?php $qty=0;$sub_total=0;$total_price = 0;$net_total=0; ?>
									<?php foreach ($item_list as $key => $row): ?>
										<?php 
										 $qty = $qty+ $row['qty'];
										 $sub_total = $sub_total+ $row['sub_total'];
							             $net_total = $net_total+ $row['sub_total'];
							             $pre_total = $net_total+$order_info['delivery_charge'];
							             $discount = get_percent($net_total,$order_info['discount']);
							             $tax_fee = get_percent($net_total,$order_info['tax_fee']);
							             $coupon_percent = get_percent($net_total,$order_info['coupon_percent']);
							             $tips =$order_info['tips'];
							             $grand_total = grand_total($net_total,$order_info['delivery_charge'],$order_info['discount'],$order_info['tax_fee'],$order_info['coupon_percent'],$order_info['tips'],$order_info['order_type']);


										?>
										<tr>
											<td><?= $key+1;?></td>
											<td>
												<p><?= $row['is_package']==1?$row['package_name']:$row['name'];?> 
												<?php if($row['is_size']==1): ?>
													<span class="badge sizeTag"><?= lang('size'); ?> : <?= get_size($row['size_slug'],$row['shop_id']) ?></span>
												<?php endif;?>
												</p>
												<?php if(isset($row['is_extras']) && $row['is_extras']==1): ?>
												<?php $extraId = json_decode($row['extra_id']); ?>
													<div class="extars">
														<ul>
															<?php foreach ($extraId as $key => $ex): ?>
																<li><span>1 x <?= extras($ex,$row['item_id'])->ex_name ;?></span> = <span><?= currency_position(extras($ex,$row['item_id'])->ex_price,$shop_id) ;?> </span></li>
															<?php endforeach ?>
														</ul>
													</div>
												<?php endif;?>

											</td>
											<td><?= $row['qty'];?></td>
											<td><?= currency_position($row['item_price'],$shop_id);?> </td>
											<td><?= currency_position($row['item_price']*$row['qty'],$shop_id);?></td>
										</tr>
									<?php endforeach ?>
									<tr >
										<td colspan="3"></td>
										<td>
											<p><?= lang('sub_total'); ?></p>
											<p><?= lang('shipping'); ?></p>
											<p><?= lang('tax'); ?></p>
											<p><?= lang('discount'); ?></p>
											<p><b><?= lang('total'); ?></b></p>
										</td>
										<td>
											<p><b><?= currency_position($net_total,$shop_id);?></b></p>
											<p><?= $order_info['delivery_charge']==0?currency_position(0,$shop_id):currency_position($order_info['delivery_charge'],$shop_id) ;?> </p>

											<p><?= currency_position($tax_fee,$shop_id);?> </p>

											<?php  if($tips !=0):?>
												<p><?= currency_position($tips,$shop_id);?> </p>
											<?php endif;?>
											<?php  if($discount!=0):?>
												<p><?= currency_position($discount,$shop_id);?> </p>
											<?php endif;?>

											<?php if($coupon_percent!=0): ?>
												<p><?= currency_position($coupon_percent,$shop_id);?> </p>
											<?php endif;?>
											
											<p><b><?= currency_position($grand_total,$shop_id);?> </b></p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


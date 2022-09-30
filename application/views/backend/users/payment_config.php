<div class="row">
	<?php include APPPATH.'views/backend/users/inc/leftsidebar.php'; ?>
	<?php if(check()==1 && $this->security->online_payment()==1): ?>
	<div class="col-md-7">
		<div class="card">
			<div class="card-header">
				<h4><?= lang('payment_gateway'); ?></h4>
			</div>
			<div class="card-body">
				<div class="payemt_list">
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th><?= lang('name'); ?></th>
									<th><?= lang('status'); ?></th>
									<th><?= lang('action'); ?></th>
								</tr>
							</thead>
							<tbody>
								<?php $i=1; foreach (payment_methods() as $key => $value): ?>
								<tr>
									<td><?= $i ;?></td>
									<td><?= $value['name'] ;?></td>
									<td>
										<?php if($settings[$value['active_slug']]==1): ?>
											<span class="label bg-success-soft"><i class="fa fa-check c_green"></i> &nbsp;<?= lang('installed') ;?></span>
										<?php else: ?>
											<span class="label bg-danger-soft"><i class="fa fa-ban c_red"></i> &nbsp;<?= lang('not_installed') ;?></span>
										<?php endif;?>
									</td>
									<td>
										<?php if($settings[$value['active_slug']]==1): ?>
											<a href="<?= base_url("{$install_url}{$value['active_slug']}/0") ;?>" class="label label-danger action_btn" data-msg="click to uninstall"><i class="icofont-ban"></i> <?= lang('uninstall'); ?></a>
										<?php else: ?>
											<a href='<?= base_url("{$install_url}{$value['active_slug']}/1") ;?>' class="label label-success action_btn" data-msg="click to install"><i class="icofont-hand-drag1"></i> <?= lang('install'); ?></a>
										<?php endif;?>	
									</td>
								</tr>
								<?php $i++; endforeach ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<form class="email_setting_form mt-50" action="<?= base_url('admin/restaurant/add_payment_method'); ?>" method="post" enctype= "multipart/form-data" autocomplete="off">
		<?= csrf() ;?>
		<?php if(shop_active('paypal_status')==1): ?>
			<div class="card">
				<div class="card-header">
					<h4><?= lang('paypal_payment'); ?></h4>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="form-group  col-md-6 col-sm-6 col-xs-6">
							<?php $paypal = json_decode(restaurant()->paypal_config); ?>
							<label for=""><?= !empty(lang('status'))?lang('status'):"Paypal Status";?></label>
							<div class="">
								<input type="checkbox" name="is_paypal" class=""  value="1"  <?= isset($settings['is_paypal']) && $settings['is_paypal']==1?'checked':'';?> data-toggle="toggle" data-on="<i class='fa fa-check'></i> <?= lang('active');?>" data-off="<i class='fa fa-pause'></i> <?= lang('off'); ?>">

							</div>
						</div>

						<div class="form-group  col-md-12 col-sm-12 col-xs-12">
							<label for=""><?= !empty(lang('paypal_environment'))?lang('paypal_environment'):"Paypal Environment";?></label>
							<div class="">
								<select name="is_live" class="form-control">
									<option value="0" <?= isset($paypal->is_live) && $paypal->is_live==0?"selected":"" ;?>><?= lang('sandbox'); ?></option>
									<option value="1" <?= isset($paypal->is_live) && $paypal->is_live==1?"selected":"" ;?>><?= lang('live'); ?></option>
								</select>
							</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label class=""><?= !empty(lang('paypal_email'))?lang('paypal_email'):"Paypal Email";?></label>
								<div class="">
									<input type="text" name="paypal_email" placeholder="<?= !empty(lang('paypal_business_email'))?lang('paypal_business_email'):"Paypal Business Email";?>" class="form-control" value="<?= !empty($paypal->paypal_email)?html_escape($paypal->paypal_email):'';  ?>">
								</div>
							</div>
						</div>

					</div>
						
				</div><!-- card-body -->
			</div><!-- card -->
		<?php endif;?>
		<?php if(shop_active('stripe_status')==1): ?>
			<div class="card">
				<div class="card-header">
					<h4><?= lang('stripe_payment'); ?></h4>
				</div>
				<div class="card-body">
					<div class="row">
						<?php $stripe =  json_decode(restaurant()->stripe_config); ?>
						<div class="form-group  col-md-6 col-sm-6 col-xs-12">
							<label for=""><?= !empty(lang('stripe_payment'))?lang('stripe_payment'):"Stripe Payment Gateway";?></label>
							<div class="">
								<input type="checkbox" name="is_stripe" class="" value="1"  <?= isset($settings['is_stripe']) && $settings['is_stripe']==1?'checked':'';?> data-toggle="toggle" data-on="<i class='fa fa-check'></i> <?= lang('active'); ?>" data-off="<i class='fa fa-pause'></i> <?= lang('off'); ?>">

							</div>
						</div>
					</div><!-- row -->
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<label class=""><?= !empty(lang('stripe_public_key'))?lang('stripe_public_key'):"Stripe Public key";?></label>
								<div class="">
									<input type="text" name="public_key" placeholder="<?= !empty(lang('stripe_public_key'))?lang('stripe_public_key'):"Stripe Public key";?>" class="form-control" value="<?= !empty($stripe->public_key)?html_escape($stripe->public_key):'';  ?>">
								</div>
							</div>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<label class=""><?= !empty(lang('stripe_secret_key'))?lang('stripe_secret_key'):"Stripe Secret key";?></label>
								<div class="">
									<input type="text" name="secret_key" placeholder="<?= !empty(lang('stripe_secret_key'))?lang('stripe_secret_key'):"Stripe Secret key";?>" class="form-control" value="<?= !empty($stripe->secret_key)?html_escape($stripe->secret_key):'';  ?>">
								</div>
							</div>
						</div>
					</div>	
						
				</div><!-- card-body -->
			</div><!-- card -->
		<?php endif;?>
		<?php if(shop_active('razorpay_status')==1): ?>
			<div class="card">
				<div class="card-header">
					<h4><?= lang('razorpay_payment'); ?></h4>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="form-group  col-md-6 col-sm-6 col-xs-6">
							<?php $razorpay = json_decode(restaurant()->razorpay_config); ?>
							<label for=""><?= !empty(lang('razorpay_payment'))?lang('razorpay_payment'):"razorpay Payment";?></label>
							<div class="">
								<input type="checkbox" name="is_razorpay" class=""  value="1"  <?= isset($settings['is_razorpay']) && $settings['is_razorpay']==1?'checked':'';?> data-toggle="toggle" data-on="<i class='fa fa-check'></i> <?= lang('active');?>" data-off="<i class='fa fa-pause'></i> <?= lang('off'); ?>">

							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label class=""><?= !empty(lang('razorpay_key_id'))?lang('razorpay_key_id'):"Razorpay Key Id";?></label>
								<div class="">
									<input type="text" name="razorpay_key_id" placeholder="<?= !empty(lang('razorpay_key_id'))?lang('razorpay_key_id'):"Razorpay key";?>" class="form-control" value="<?= !empty($razorpay->razorpay_key_id)?html_escape($razorpay->razorpay_key_id):'';  ?>">
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label class=""><?= !empty(lang('secret_key'))?lang('secret_key'):"Secret Key";?></label>
								<div class="">
									<input type="text" name="razorpay_key" placeholder="<?= !empty(lang('razorpay_key'))?lang('razorpay_key'):"Razorpay Key";?>" class="form-control" value="<?= !empty($razorpay->razorpay_key)?html_escape($razorpay->razorpay_key):'';  ?>">
								</div>
							</div>
						</div>
					</div>
						
				</div><!-- card-body -->
			</div><!-- card -->
		<?php endif;?>
			<?php if(shop_active('stripe_fpx_status')==1): ?>
				<div class="card">
					<div class="card-header mt-1">
						<h4><?= !empty(lang('stripe_fpx'))?lang('stripe_fpx'):"Stripe FPX";?></h4>
					</div>
					<?php $fpx = !empty($settings['fpx_config'])?json_decode($settings['fpx_config']):''; ?>
					<div class="card-body">
						<div class="row">
							<div class="form-group  col-md-6 col-sm-6 col-xs-6">
								<label for=""><?= !empty(lang('status'))?lang('status'):"status";?></label>
								<div class="">
									<input type="checkbox" name="is_fpx" class=""  value="1"  <?= isset($settings['is_fpx']) && $settings['is_fpx']==1?'checked':'';?> data-toggle="toggle" data-on="<i class='fa fa-check'></i> <?= lang('active'); ?>" data-off="<i class='fa fa-pause'></i> <?= lang('off'); ?>">

								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('public_key'))?lang('public_key'):"Public Key";?></label>
									<div class="">
										<input type="text" name="fpx_public_key" placeholder="<?= !empty(lang('public_key'))?lang('public_key'):"Public key";?>" class="form-control" value="<?= !empty($fpx->fpx_public_key)?html_escape($fpx->fpx_public_key):'';  ?>">
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('secret_key'))?lang('secret_key'):"Secret Key";?></label>
									<div class="">
										<input type="text" name="fpx_secret_key" placeholder="<?= !empty(lang('secret_key'))?lang('secret_key'):"Secret Key";?>" class="form-control" value="<?= !empty($fpx->fpx_secret_key)?html_escape($fpx->fpx_secret_key):'';  ?>">
									</div>
								</div>
							</div>

						</div>

					</div><!-- card-body -->
					
				</div><!-- card -->
			<?php endif;?>

			<?php if(shop_active('mercado_status')==1): ?>
				<div class="card">
					<div class="card-header mt-1">
						<h4><?= !empty(lang('mercadopago'))?lang('mercadopago'):"Mercadopado";?></h4>
					</div>
					<div class="card-body">
						<div class="row">
							<?php $mercado = !empty($settings['mercado_config'])?json_decode($settings['mercado_config']):''; ?>
							<div class="form-group  col-md-6 col-sm-6 col-xs-12">
								<label for=""><?= !empty(lang('status'))?lang('status'):"Status";?></label>
								<div class="">
									<input type="checkbox" name="is_mercado" class="" value="1"  <?= isset($settings['is_mercado']) && $settings['is_mercado']==1?'checked':'';?> data-toggle="toggle" data-on="<i class='fa fa-check'></i> <?= lang('active'); ?>" data-off="<i class='fa fa-pause'></i> <?= lang('off'); ?>">

								</div>
							</div>
						</div><!-- row -->
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('public_key'))?lang('public_key'):"Public key";?></label>
									<div class="">
										<input type="text" name="mercado_public_key" placeholder="<?= !empty(lang('public_key'))?lang('public_key'):"Public key";?>" class="form-control" value="<?= !empty($mercado->mercado_public_key)?html_escape($mercado->mercado_public_key):'';  ?>">
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('access_token'))?lang('access_token'):"Access Token";?></label>
									<div class="">
										<input type="text" name="access_token" placeholder="<?= !empty(lang('access_token'))?lang('access_token'):"Access Token";?>" class="form-control" value="<?= !empty($mercado->access_token)?html_escape($mercado->access_token):'';  ?>">
									</div>
								</div>
							</div>
						</div>

					</div><!-- card-body -->
				</div><!-- card -->
			<?php endif;?>
			<?php if(shop_active('paytm_status')==1): ?>
				<div class="card">
					<div class="card-header mt-1">
						<h4><?= !empty(lang('paytm'))?lang('paytm'):"Paytm";?></h4>
					</div>
					<div class="card-body">
						<div class="row">
							<?php $paytm = !empty($settings['paytm_config'])?json_decode($settings['paytm_config']):''; ?>
							<div class="form-group  col-md-6 col-sm-6 col-xs-12">
								<label for=""><?= !empty(lang('status'))?lang('status'):"Status";?></label>
								<div class="">
									<input type="checkbox" name="is_paytm" class="" value="1"  <?= isset($settings['is_paytm']) && $settings['is_paytm']==1?'checked':'';?> data-toggle="toggle" data-on="<i class='fa fa-check'></i> <?= lang('active'); ?>" data-off="<i class='fa fa-pause'></i> <?= lang('off'); ?>">

								</div>
							</div>
						</div><!-- row -->
						<div class="row">
							<div class="form-group  col-md-12 col-sm-12 col-xs-12">
								<label for=""><?= !empty(lang('environment'))?lang('environment'):"Environment";?></label>
								<div class="">
									<select name="is_paytm_live" class="form-control">
										<option value="0" <?= isset($paytm->is_paytm_live) && $paytm->is_paytm_live==0?"selected":"" ;?>><?= lang('sandbox'); ?></option>
										<option value="1" <?= isset($paytm->is_paytm_live) && $paytm->is_paytm_live==1?"selected":"" ;?>><?= lang('live'); ?></option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('merchand_id'))?lang('merchand_id'):"Merchand ID";?></label>
									<div class="">
										<input type="text" name="merchant_id" placeholder="<?= !empty(lang('merchant_id'))?lang('merchant_id'):"Merchant ID";?>" class="form-control" value="<?= !empty($paytm->merchant_id)?html_escape($paytm->merchant_id):'';  ?>">
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('merchant_key'))?lang('merchant_key'):"Merchant Key";?></label>
									<div class="">
										<input type="text" name="merchant_key" placeholder="<?= !empty(lang('merchant_key'))?lang('merchant_key'):"Merchant Key";?>" class="form-control" value="<?= !empty($paytm->merchant_key)?html_escape($paytm->merchant_key):'';  ?>">
									</div>
								</div>
							</div>
						</div>

					</div><!-- card-body -->
				</div><!-- card -->
			<?php endif;?>
			<?php if(shop_active('flutterwave_status')==1): ?>
				<div class="card">
					<div class="card-header mt-1">
						<h4><?= !empty(lang('flutterwave'))?lang('flutterwave'):"flutterwave";?></h4>
					</div>
					<div class="card-body">
						<div class="row">
							<?php $flutterwave = !empty($settings['flutterwave_config'])?json_decode($settings['flutterwave_config']):''; ?>
							<div class="form-group  col-md-6 col-sm-6 col-xs-12">
								<label for=""><?= !empty(lang('status'))?lang('status'):"Status";?></label>
								<div class="">
									<input type="checkbox" name="is_flutterwave" class="" value="1"  <?= isset($settings['is_flutterwave']) && $settings['is_flutterwave']==1?'checked':'';?> data-toggle="toggle" data-on="<i class='fa fa-check'></i> <?= lang('active'); ?>" data-off="<i class='fa fa-pause'></i> <?= lang('off'); ?>">

								</div>
							</div>
						</div><!-- row -->
						<div class="row">
							<div class="form-group  col-md-12 col-sm-12 col-xs-12">
								<label for=""><?= !empty(lang('environment'))?lang('environment'):"Environment";?></label>
								<div class="">
									<select name="is_flutterwave_live" class="form-control">
										<option value="0" <?= isset($flutterwave->is_flutterwave_live) && $flutterwave->is_flutterwave_live==0?"selected":"" ;?>><?= lang('sandbox'); ?></option>
										<option value="1" <?= isset($flutterwave->is_flutterwave_live) && $flutterwave->is_flutterwave_live==1?"selected":"" ;?>><?= lang('live'); ?></option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('public_key'))?lang('public_key'):"Public Key";?></label>
									<div class="">
										<input type="text" name="fw_public_key" placeholder="<?= !empty(lang('public_key'))?lang('public_key'):"Merchant ID";?>" class="form-control" value="<?= !empty($flutterwave->fw_public_key)?html_escape($flutterwave->fw_public_key):'';  ?>">
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('secret_key'))?lang('secret_key'):"Secret key";?></label>
									<div class="">
										<input type="text" name="fw_secret_key" placeholder="<?= !empty(lang('secret_key'))?lang('secret_key'):"Secret key";?>" class="form-control" value="<?= !empty($flutterwave->fw_secret_key)?html_escape($flutterwave->fw_secret_key):'';  ?>">
									</div>
								</div>
							</div>

							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class=""><?= !empty(lang('encryption_key'))?lang('encryption_key'):"Encryption Key ";?></label>
									<div class="">
										<input type="text" name="encryption_key" placeholder="<?= !empty(lang('encryption_key'))?lang('encryption_key'):"Encryption Key ";?>" class="form-control" value="<?= !empty($flutterwave->encryption_key)?html_escape($flutterwave->encryption_key):'';  ?>">
									</div>
								</div>
							</div>
						</div>

					</div><!-- card-body -->
				</div><!-- card -->
			<?php endif;?>
			<div class="card-footer">
				<input type="hidden" name="id" value="<?= isset(restaurant()->id)?restaurant()->id:0; ?>">
				<button type="submit" class="btn btn-primary btn-block"><i class="fa fa-save"></i> &nbsp;<?= !empty(lang('save_change'))?lang('save_change'):"Save Change";?></button>
			</div>
		</form>
	</div><!-- col-9 -->
<?php endif;?>
</div>
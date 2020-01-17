  <div class="row">
    <div class="col-xs-12 col-sm-9">
      <?php echo validation_errors(); ?> 
      <?php echo form_open('/shop/user_details') ; ?>        
      <?php echo form_input($first_name); ?><br /> 
      <?php echo form_input($last_name); ?><br /> 
      <?php echo form_input($email); ?><br /> 
      <?php echo form_input($email_confirm); ?><br /> 
      <?php echo form_textarea($payment_address); ?><br /> 
      <?php echo form_textarea($delivery_address); ?><br /> 
      <?php echo form_submit('', $this->lang->line('common_form_elements_go'), 'class="btn btn-default"') ; ?><br /> 
      <?php echo form_close() ; ?> 
    </div>
  </div>
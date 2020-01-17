      <div class="container-fluid">
      <div class="row">
        <div class="col-lg-10 col-md-8 col-sm-10 col-xs-8">
            <div class="row equal">
            <?php foreach ($query->result() as $row) : ?>
          <div class="col-sm-4 col-xs-6">
            <div class="panel panel-default">
            <div class="panel-heading">                        
                <h2 class="panel-title"><?php echo $row->product_name; ?></h2>
            </div>
             <div class="panel-body">
                <p>&pound<?php echo $row->product_price; ?></p>
                <p><?php echo $row->product_description; ?></p>
            </div>
            <div class="panel-footer">
                <?php echo anchor('shop/add/'.$row->product_id, $this->lang->line('index_add_to_cart'), 'class="btn btn-default"'); ?>
            </div>
            </div>
          </div>              
            <?php endforeach; ?>
          </div>
        </div>   
        <div class="col-lg-2 col-md-4 col-sm-2 col-xs-4">     
          <div class="list-group">
            <?php echo anchor(base_url(), $this->lang->line('index_all_categories'), 'class="list-group-item"'); ?>
            <?php foreach ($cat_query->result() as $row) : ?>
              <?php echo anchor('shop/index/'.$row->cat_url_name, $row->cat_name, 'class="list-group-item"'); ?>
            <?php endforeach; ?>
          </div>
        </div>
      </div>

    </div>
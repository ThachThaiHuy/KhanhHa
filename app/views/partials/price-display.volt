<?php if ($sale_price > 0) {?>
    <p class="old-price"><s><?php echo $t->_('money_text',array("money" => number_format($price))) ?></s></p>
    <p class="product_price discount-price color-red"><strong><?php echo $t->_('money_text',array("money" => number_format($sale_price))) ?></strong></p>
<?php } else {?>
    <p class="old-price">&nbsp;</p>
    <p class="product_price discount-price color-red">
    <strong>
      <?php 
        if($price > 0)
        {
            echo $t->_('money_text',array("money" => number_format($price))) ;
        }
        else{
           echo $t->_("contact_page") ;
        }
        
      ?>
    </strong></p>
<?php }?>
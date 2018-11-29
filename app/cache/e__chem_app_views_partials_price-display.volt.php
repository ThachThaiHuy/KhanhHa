<?php if ($sale_price > 0) {?>
    <p class="old-price"><s><?php echo number_format($price)?> VNĐ</s></p>
    <p class="product_price discount-price color-red"><strong><?php echo number_format($sale_price)?> VNĐ</strong></p>
<?php } else {?>
    <p class="old-price">&nbsp;</p>
    <p class="product_price discount-price color-red">
    <strong>
      <?php 
        if($price > 0)
        {
            echo number_format($price).' VNĐ';
        }
        else{
          echo 'Liên Hệ';
        }
        
      ?>
    </strong></p>
<?php }?>
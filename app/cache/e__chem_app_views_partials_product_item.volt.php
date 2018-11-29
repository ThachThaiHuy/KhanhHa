<div class="product_item type_2">
  <!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->
  <div class="image_wrap">
    <img src="<?= $item->image_thumbnail ?>" alt="<?= $item->name ?>">
    <!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->
    <div class="actions_wrap">
      <div class="centered_buttons">
        <a href="/san-pham/<?= $item->slug ?>" class="button_dark_grey middle_btn quick_view">Xem chi tiết</a>
      </div><!--/ .centered_buttons -->
    </div><!--/ .actions_wrap-->
    <!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->
  </div><!--/. image_wrap-->
  <!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->
  <!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->
  <?php if ($item -> status == 1) {?>
  <div class="label_new">Mới</div>
  <?php } elseif ($item -> status == 2) {?>
  <div class="label_hot">Hot</div>
  <?php }?>
  <!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->
  <!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->
  <div class="description text-center">
    <a href="/san-pham/<?= $item->slug ?>" class="text-overflow"><?= $item->name ?></a>
    <div class="clearfix product_info">
    <?= $this->partial('partials/price-display', ['sale_price' => $item->sale_price, 'price' => $item->price]) ?>
      
    </div>
  </div>
  <!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->
  <!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->
  <div class="buttons_row">
    <a href="/lien-he" class="button_green" data-id="<?= $item->id ?>">Liên Hệ</a>
    
  </div>
  <!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->
  </div>


      <?php
        use MyApp\Model\CategoryDetails;
        use MyApp\Model\Products; 
        $index = 0;
        $categoryDetails = new CategoryDetails();
        $products = new Products();
        foreach ($categoryList as $category) {
          $categoryDetailList = $categoryDetails -> findByCategoryIdAndLimit($category -> id, 5);
        ?>
      <section class="section_offset <?php echo ($index > 0) ? 'animated transparent' : '' ?>" <?php echo ($index > 0) ? 'data-animation="fadeInDown"' : ''; $index += 1; ?>>
        <h3><?= $category->name ?></h3>
        <!-- - - - - - - - - - - - - - Tabs - - - - - - - - - - - - - - - - -->
        <div class="tabs type_2 products">
          <!-- - - - - - - - - - - - - - Navigation of tabs - - - - - - - - - - - - - - - - -->
          <ul class="tabs_nav clearfix">
            <?php foreach ($categoryDetailList as $categoryDetail) {?>
            <li><a href="#tab-<?= $categoryDetail->id ?>"><?= $categoryDetail->name ?></a></li>
            <?php }?>
          </ul>
          
          <!-- - - - - - - - - - - - - - End navigation of tabs - - - - - - - - - - - - - - - - -->

          <!-- - - - - - - - - - - - - - Tabs container - - - - - - - - - - - - - - - - -->

          <div class="tab_containers_wrap">
            <?php foreach ($categoryDetailList as $categoryDetail) {
              $productList = $products -> findByCatelogyDetailAndLimit($categoryDetail -> id, 5);

            ?>
            <div id="tab-<?= $categoryDetail->id ?>" class="tab_container">
              <!-- - - - - - - - - - - - - - Carousel of featured products - - - - - - - - - - - - - - - - -->
              <div class="owl_carousel carousel_in_tabs">
              <?php foreach ($productList as $product) {?>
                <?= $this->partial('partials/product_item', ['item' => $product]) ?>
                <?php }?>
              </div>
              <!-- - - - - - - - - - - - - - View all - - - - - - - - - - - - - - - - -->
              <footer class="bottom_box">
                <a href="/danh-muc/<?= $category->slug ?>/<?= $categoryDetail->slug ?>" class="button_grey middle_btn">Xem tất cả sản phẩm</a>
              </footer>
              <!-- - - - - - - - - - - - - - End of view all - - - - - - - - - - - - - - - - -->
            </div>
            <?php }?>

          </div>

          <!-- - - - - - - - - - - - - - End of tabs containers - - - - - - - - - - - - - - - - -->

        </div><!--/ .tabs.section_offset-->
        
        <!-- - - - - - - - - - - - - - End of tabs - - - - - - - - - - - - - - - - -->

      </section><!--/ .section_offset -->
      <?php }?>

<script>
$(document).ready(function() {

    $('.carousel').carousel({
        interval: 4000
    })
});
</script>
<aside class="col-md-3 col-sm-4 has_mega_menu hidden-xs">

              <!-- - - - - - - - - - - - - - Today's deals - - - - - - - - - - - - - - - - -->

            
              <!-- - - - - - - - - - - - - - End of today's deals - - - - - - - - - - - - - - - - -->

              <!-- - - - - - - - - - - - - - Categories - - - - - - - - - - - - - - - - -->

              <section class="section_offset">

                <h3><?php echo $t->_('catalog_title') ?></h3>

                <ul class="theme_menu cats">
                  {{ partial('partials/catalog')}}                
                </ul>
              </section><!--/ .animated.transparent-->

              <!-- - - - - - - - - - - - - - End of categories - - - - - - - - - - - - - - - - -->

              <!-- - - - - - - - - - - - - - Bestseller Products - - - - - - - - - - - - - - - - -->

              <section class="section_offset">
                <h3><?php echo $t->_('news_title') ?></h3>
                <ul class="products_list_widget products_list_sidebar">
                  <!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->
                  <?php 
                    
                    
                    foreach ($newProduct as $product) {
                  ?>
                  <li>
                    {{ partial('partials/product_item',['item':product])}}         
                  </li>
                  <?php }?>
                  <!-- - - - - - - - - - - - - - End of product - - - - - - - - - - - - - - - - -->
                </ul><!--/ .list_of_products-->

                <!-- - - - - - - - - - - - - - View all products - - - - - - - - - - - - - - - - -->

                <footer class="bottom_box">

                  <a href="/san-pham-moi" class="button_grey middle_btn"><?php echo $t->_('view_all') ?></a>

                </footer>

                <!-- - - - - - - - - - - - - -End of view all products - - - - - - - - - - - - - - - - -->

              </section>

              <!-- - - - - - - - - - - - - - End of Bestseller Products - - - - - - - - - - - - - - - - -->

            </aside><!--/ [col]-->
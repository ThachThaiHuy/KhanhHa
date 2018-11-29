<?php
                  use MyApp\Model\Categories;
                  use MyApp\Model\CategoryDetails;

                  $categories = new Categories();
                  $categoryDetails = new CategoryDetails();

                  $categoryList = $categories -> findAllOrderById();
                  foreach ($categoryList as $item) {
                      $categoryDetailList = $categoryDetails -> findByCategoryId($item -> id);
                      $item_child_count = count($categoryDetailList);
                      $class_name = "";
                      if ($item_child_count > 0) 
                        $class_name = "has_megamenu";
                      ?>
                        <li class="<?php echo $class_name ?> animated_item">
                          <a href="/danh-muc/<?php echo $item -> slug ?>"><?php echo $item -> name?></a>
                          <?php if ($item_child_count > 0) {?>
                          <!-- - - - - - - - - - - - - - Mega menu - - - - - - - - - - - - - - - - -->
                          <div class="mega_menu clearfix">
                            <!-- - - - - - - - - - - - - - Mega menu item - - - - - - - - - - - - - - - - -->
                            <div class="mega_menu_item">
                              <ul class="list_of_links">
                                <?php foreach ($categoryDetailList as $detail) { ?>
                                  <li><a href="/danh-muc/<?php echo $item -> slug ?>/<?php echo $detail -> slug ?>"><?php echo $detail -> name ?></a></li>
                                <?php }?>
                              </ul>
                            </div><!--/ .mega_menu_item-->
                            <!-- - - - - - - - - - - - - - End of mega menu item - - - - - - - - - - - - - - - - -->
                          </div><!--/ .mega_menu-->
                          <?php }?>
                          <!-- - - - - - - - - - - - - - End of mega menu - - - - - - - - - - - - - - - - -->
                        </li>
                  <?php }?>
                        <li class="animated_item"><a href="/danh-muc/tat-ca" class="all"><b>Tất cả Sản Phẩm</b></a></li>
<div class="table_cell">
			<div class="product_item">
				<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->
				<div class="image_wrap">
					<img src="<?php echo $item -> image_thumbnail?>" alt="<?php echo $item -> name?>">
					<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->
					<div class="actions_wrap">
						<div class="centered_buttons">
							<a href="/san-pham/<?php echo $item -> slug?>" class="button_dark_grey middle_btn quick_view">Xem chi tiết</a>
						</div>
					</div><!--/ .actions_wrap-->
					<?php if ($item -> status == 1) {?>
			          <div class="label_new">Mới</div>
			          <?php } elseif ($item -> status == 2) {?>
			          <div class="label_hot">Hot</div>
			          <?php }?>
					<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->
				</div><!--/. image_wrap-->
				<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->
				<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->
				<div class="description text-center">

					<a href="/san-pham/<?php echo $item -> slug?>" class="text-overflow"><?php echo $item -> name?></a>

					<div class="clearfix product_info">
						<?= $this->partial('partials/price-display', ['sale_price' => $item->sale_price, 'price' => $item->price]) ?>

					</div>

				</div>
				<div class="buttons_row text-center mt15">
                    <a href="/lien-he" class="button_green float-none" data-id="<?php echo $item -> id?>">Liên Hệ</a>
                </div>
				<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

				<!-- - - - - - - - - - - - - - Full description (only for list view) - - - - - - - - - - - - - - - - -->

				<div class="full_description">
					<a href="/san-pham/<?php echo $item -> slug?>" class="product_title text-overflow"><?php echo $item -> name?></a>
					<!-- <a href="#" class="product_category">Beauty Clearance</a> -->
					<p><?php echo htmlspecialchars_decode($item -> short_description) ?></p>
					<a href="/san-pham/<?php echo $item -> slug?>" class="learn_more">Chi tiết</a>
				</div>

				<!-- - - - - - - - - - - - - - End of full description (only for list view) - - - - - - - - - - - - - - - - -->

				<!-- - - - - - - - - - - - - - Product price & actions (only for list view) - - - - - - - - - - - - - - - - -->

				<div class="actions text-center">
					<?= $this->partial('partials/price-display', ['sale_price' => $item->sale_price, 'price' => $item->price]) ?>
					<ul class="buttons_col">
						<li><a href="/lien-he" class="button_green" data-id="<?php echo $item -> id?>">Liên Hệ</a></li>
					</ul>
				</div>
				<!-- - - - - - - - - - - - - - Product price & actions (only for list view) - - - - - - - - - - - - - - - - -->

			</div><!--/ .product_item-->

		</div>
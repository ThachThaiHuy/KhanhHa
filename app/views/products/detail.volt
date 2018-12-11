<section class="section_offset mb0">
	<h1>&nbsp;</h1>
</section>
<!-- - - - - - - - - - - - - - Product images & description - - - - - - - - - - - - - - - - -->

<section class="section_offset">

	<div class="clearfix">

		<!-- - - - - - - - - - - - - - Product image column - - - - - - - - - - - - - - - - -->

		<div class="single_product">

			<!-- - - - - - - - - - - - - - Image preview container - - - - - - - - - - - - - - - - -->

			<div class="image_preview_container">

				<img id="img_zoom" class="w100percent" data-zoom-image="{{product.image_thumbnail}}" src="{{product.image_thumbnail}}" alt="{{product.name}}">

				<button class="button_grey_2 icon_btn middle_btn open_qv"><i class="icon-resize-full-6"></i></button>

			</div><!--/ .image_preview_container-->

			<!-- - - - - - - - - - - - - - End of image preview container - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Prodcut thumbs carousel - - - - - - - - - - - - - - - - -->
			
			<div class="product_preview">

				<div class="owl_carousel" id="thumbnails">
					<a href="#" data-image="{{product.image_thumbnail}}" data-zoom-image="{{product.image_thumbnail}}">
						<img src="{{product.image_thumbnail}}" data-large-image="{{product.image_thumbnail}}" alt="{{product.name}}">

					</a>
					<?php $image_slides = explode( ',', $product->image_slides);?>
	                <?php for ($i =0; $i<count($image_slides); $i++ ) { ?>
	                    <a href="#" data-image="<?php echo $image_slides[$i] ?>" data-zoom-image="<?php echo $image_slides[$i] ?>">
							<img src="<?php echo $image_slides[$i] ?>" data-large-image="<?php echo $image_slides[$i] ?>" alt="{{product.name}}">

						</a>

	                <?php } ?>
					

				</div><!--/ .owl-carousel-->

			</div><!--/ .product_preview-->
			
			<!-- - - - - - - - - - - - - - End of prodcut thumbs carousel - - - - - - - - - - - - - - - - -->


		</div>

		<!-- - - - - - - - - - - - - - End of product image column - - - - - - - - - - - - - - - - -->

		<!-- - - - - - - - - - - - - - Product description column - - - - - - - - - - - - - - - - -->

		<div class="single_product_description">

			<h3 class="offset_title"><a href="javascript:void(0)"><?php echo $product -> name ?></a></h3>
			<hr>

			<div class="description_section">

				<p><?php echo htmlspecialchars_decode($product -> short_description) ?></p>

			</div>
			<div class="product_price">
			{{ partial('partials/price-display',['sale_price':product.sale_price,'price':product.price])}}
				
			</div>

			<!-- - - - - - - - - - - - - - Quantity - - - - - - - - - - - - - - - - -->
<!--
			<div class="description_section_2 v_centered">
				
				<span class="title">Số lượng:</span>

				<div class="qty min clearfix">

					<button class="theme_button" data-direction="minus">&#45;</button>
					<input type="text" name="" id="qty" value="1">
					<button class="theme_button" data-direction="plus">&#43;</button>

				</div>

			</div>
-->
			<!-- - - - - - - - - - - - - - End of quantity - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->

			<div class="buttons_row">

				<a href="/lien-he" class="button_blue middle_btn" data-id="{{product.id}}"><?php echo $t->_('contact_page') ?></a >

			</div>

			<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

		</div>

		<!-- - - - - - - - - - - - - - End of product description column - - - - - - - - - - - - - - - - -->

	</div>

</section><!--/ .section_offset -->

<!-- - - - - - - - - - - - - - End of product images & description - - - - - - - - - - - - - - - - -->

<!-- - - - - - - - - - - - - - Tabs - - - - - - - - - - - - - - - - -->

<div class="section_offset">
<h3 class="offset_title"><?php echo $t->_('product_detail')  ?></h3>
	<div class="tabs type_2">

		<!-- - - - - - - - - - - - - - Tabs container - - - - - - - - - - - - - - - - -->

		<div class="tab_containers_wrap">

			<!-- - - - - - - - - - - - - - Tab - - - - - - - - - - - - - - - - -->

			<div class="tab_container">

				<p><?php echo htmlspecialchars_decode($product -> description) ?></p>

			</div><!--/ #tab-1-->

			<!-- - - - - - - - - - - - - - End tab - - - - - - - - - - - - - - - - -->
		</div><!--/ .tab_containers_wrap -->

		<!-- - - - - - - - - - - - - - End of tabs containers - - - - - - - - - - - - - - - - -->

	</div><!--/ .tabs-->

</div><!--/ .section_offset -->

<!-- <section class="section_offset">
<div class="row">
	<div class="col-md-12">
	    <div id="fb-root"></div>
	    <script>(function(d, s, id) {
	      var js, fjs = d.getElementsByTagName(s)[0];
	      if (d.getElementById(id)) return;
	      js = d.createElement(s); js.id = id;
	      js.src = "https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=1418906215084656";
	      fjs.parentNode.insertBefore(js, fjs);
	    }(document, 'script', 'facebook-jssdk'));</script>
	    <div class="fb-comments" data-href="<?php echo 'http://www.muguetvn.com/san-pham/'.$product->slug; ?>" data-width="100%" data-numposts="10" data-order-by="reverse_time"></div>
	</div>
</div>
</section> -->

<!-- - - - - - - - - - - - - - End of tabs - - - - - - - - - - - - - - - - -->

<!-- - - - - - - - - - - - - - Related products - - - - - - - - - - - - - - - - -->

<section class="section_offset">

	<h3 class="offset_title"><?php echo $t->_('related_products') ?></h3>

	<div class="owl_carousel related_products">

		<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->
		<?php foreach ($relateProduct as $relate) {?>
		{{ partial('partials/product_item',['item':relate])}} 
			<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->
		<?php }?>
	</div><!--/ .owl_carousel -->

</section><!--/ .section_offset -->

<!-- - - - - - - - - - - - - - End of related products - - - - - - - - - - - - - - - - -->
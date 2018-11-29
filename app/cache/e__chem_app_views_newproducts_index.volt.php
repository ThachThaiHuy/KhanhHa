<section class="section_offset mb0">
	<h1><?= $pageTitle ?></h1>
</section>
<div class="section_offset">
<header class="top_box on_the_sides">
<div class="left_side clearfix v_centered">
	<!-- - - - - - - - - - - - - - Sort by - - - - - - - - - - - - - - - - -->
	<div class="v_centered">
		<span>Sắp xếp:</span>
		<div class="custom_select sort_select">
			<select name="sort" class="change-value">	
				<option value="1" <?php echo $sortby == 1 ? 'selected' : ''; ?>>Giá từ thấp đến cao</option>
				<option value="2" <?php echo $sortby == 2 ? 'selected' : ''; ?>>Giá từ cao xuống thấp</option>
				<option value="3" <?php echo $sortby == 3 ? 'selected' : ''; ?>>Sản phẩm mới cập nhật</option>
			</select>
		</div>
	</div>
	<!-- - - - - - - - - - - - - - End of sort by - - - - - - - - - - - - - - - - -->
	<!-- - - - - - - - - - - - - - Number of products shown - - - - - - - - - - - - - - - - -->
	<!-- <div class="v_centered">
		<span>Show:</span>
		<div class="custom_select">
			<select name="">
				<option value="15">15</option>
				<option value="12">12</option>
				<option value="9">9</option>
				<option value="6">6</option>
				<option value="3">3</option>
			</select>
		</div>
	</div> -->
	<!-- - - - - - - - - - - - - - End of number of products shown - - - - - - - - - - - - - - - - -->
</div>

<div class="right_side">
	<!-- - - - - - - - - - - - - - Product layout type - - - - - - - - - - - - - - - - -->
	<div class="layout_type buttons_row" data-table-container="#products_container">
		<a href="#" data-table-layout="grid_view" class="button_grey middle_btn icon_btn active tooltip_container grid_view"><i class="icon-th"></i><span class="tooltip top">Grid View</span></a>
		<a href="#" data-table-layout="list_view list_view_products" class="button_grey middle_btn icon_btn tooltip_container list_view"><i class="icon-th-list"></i><span class="tooltip top">List View</span></a>
	</div>
	<!-- - - - - - - - - - - - - - End of product layout type - - - - - - - - - - - - - - - - -->
</div>
</header>

<div class="table_layout" id="products_container">
	<!-- mỗi lần loop là lấy 3 phần tử, vì theo theme thì đang sử dụng table_row -->
	<?php for($i = 0; $i < count($data->items); $i = $i + 3) {?>
	<div class="table_row">
		<?php
			for($j = 0; $j < 3; $j++){
				if (isset($data->items[$i + $j]))
				{ ?>
					<?= $this->partial('partials/product-item-list', ['item' => $data->items[$i + $j]]) ?>
				<?php } else{ ?>
					<div class="table_cell empty pa0"></div>
				<?php }
			}
		 ?>
	</div>
	<?php }?>

</div><!--/ .table_layout -->

<footer class="bottom_box on_the_sides">

<div class="margin-auto">

	<?= $this->partial('partials/paging') ?>

</div>

</footer>

</div>
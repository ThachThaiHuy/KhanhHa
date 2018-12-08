<?php
     $controllerName = $this->dispatcher->getControllerName();
     $actionName = $this->dispatcher->getActionName();
?>
<header id="header" class="type_6">

  <!-- - - - - - - - - - - - - - Bottom part - - - - - - - - - - - - - - - - -->

  <div class="bottom_part">

    <div class="container">

      <div class="row">

        <div class="main_header_row">
          <div class="col-sm-2 logo-content">
            <!-- - - - - - - - - - - - - - Logo - - - - - - - - - - - - - - - - -->
            <a href="/" class="logo">

              <img src="{{about.logo_header}}" style="margin-left: 10px;" width="" height="115px" alt="Chemist">

            </a>
            <!-- - - - - - - - - - - - - - End of logo - - - - - - - - - - - - - - - - -->
          </div><!--/ [col]-->

          <div class="col-sm-10">
            <div class="col-sm-7">
              <h2 class="color-green"><strong>{{about.company_name}}</strong></h2>
              <h3 class="color-green">{{about.company_name_line2}}</h3>
             </div>
            <!-- - - - - - - - - - - - - - End call to action - - - - - - - - - - - - - - - - -->
          <div class="col-sm-5">
            <!-- - - - - - - - - - - - - - Search form - - - - - - - - - - - - - - - - -->
            
            <form class="clearfix search" action='/tim-kiem-san-pham' id='search' method='get'>
              <input type="text" name="strSearch" tabindex="1" placeholder="Tìm kiếm..." class="alignleft" value="<?php echo isset($strSearch) ? htmlspecialchars_decode($strSearch) : '' ?>">
              <button class="button_green def_icon_btn alignleft"></button>

            </form><!--/ #search-->
            
            <!-- - - - - - - - - - - - - - End search form - - - - - - - - - - - - - - - - -->
           <div class="call_us pull-right">

              <span>Host Line:</span> <b>{{about.phone}}</b>

            </div><!--/ .call_us-->
          </div><!--/ [col]-->
          </div><!--/ [col]-->



        </div><!--/ .main_header_row-->

      </div><!--/ .row-->

    </div><!--/ .container-->

  </div><!--/ .bottom_part -->

  <!-- - - - - - - - - - - - - - End of bottom part - - - - - - - - - - - - - - - - -->

  <!-- - - - - - - - - - - - - - Main navigation wrapper - - - - - - - - - - - - - - - - -->

  <div id="main_navigation_wrap">

    <div class="container">

      <div class="row">

        <div class="col-xs-12">

          <!-- - - - - - - - - - - - - - Sticky container - - - - - - - - - - - - - - - - -->

          <div class="sticky_inner type_2">

            <!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - -->

           

            <!-- - - - - - - - - - - - - - End of navigation item - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - -->

            <div class="nav_item">

              <nav class="main_navigation">

                <ul>

                  <li class="<?php echo $controllerName == 'home' && $actionName == 'index' ? 'current' : '';?>"><a href="/">Trang chủ</a></li>
                  <li class="<?php echo $controllerName == 'introduce' && $actionName == 'index' ? 'current' : '';?>"><a href="/gioi-thieu">Giới thiệu</a></li>
                  <li class="has_submenu <?php echo ($controllerName == 'newproducts' || $controllerName == 'saleproducts' || $controllerName == 'hotproducts'||$controllerName == 'categories') && $actionName == 'index' ? 'current' : '';?>">
                      <a href="#">Sản phẩm</a>
                      <ul class="theme_menu submenu catalog-menu">
                        {{ partial('partials/catalog')}}
                    </ul>
                  </li>
                  <li class="<?php echo $controllerName == 'partner' && ($actionName == 'index' || $actionName == 'all') ? 'current' : '';?>">
                      <a href="/doi-tac">Đối Tác</a>
                  </li>         
                  <!-- <li><a href="#">Bài viết</a></li> -->
                  <li class="<?php echo $controllerName == 'contacts' && $actionName == 'index' ? 'current' : '';?>"><a href="/lien-he">Liên hệ</a></li>
                </ul>

              </nav><!--/ .main_navigation-->

            </div>

            <!-- - - - - - - - - - - - - - End of navigation item - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - -->

            <!-- <div class="nav_item size_4">

              <a href="#" class="wishlist_button" data-amount="7"></a>
              
            </div> --><!--/ .nav_item-->

            <!-- - - - - - - - - - - - - - End of main navigation - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - -->

            <!-- <div class="nav_item size_4">

              <a href="#" class="compare_button" data-amount="3"></a>
              
            </div> --><!--/ .nav_item-->

            <!-- - - - - - - - - - - - - - End of main navigation - - - - - - - - - - - - - - - - -->
          </div><!--/ .sticky_inner -->

          <!-- - - - - - - - - - - - - - End of sticky container - - - - - - - - - - - - - - - - -->

        </div><!--/ [col]-->

      </div><!--/ .row-->
<div class="section_offset" >

  <div id="myCarousel" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
      <ol class="carousel-indicators">
      <?php
        $iBanner = 0;
        foreach ($bannerList as $item) {?>
        <li data-target="#myCarousel" data-slide-to="<?php echo $iBanner;?>" class="<?php echo $iBanner == 0 ? 'active' : ''?>"></li>
        <?php $iBanner ++;}?>
      </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <?php
        $iBanner2 = 0;
        foreach ($bannerList as $item) {?>
        <div class="item <?php echo $iBanner2 == 0 ? 'active' : ''?>" >
            <img class="" src="{{item.image}}" alt="{{item.text}}" style="max-height: 350px; min-height: 150px; margin-left: auto;margin-right: auto;">
        </div>
        <?php $iBanner2 ++;}?>
    </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
  </div>
        
        <!-- - - - - - - - - - - - - - End of Revolution slider - - - - - - - - - - - - - - - - -->

      </div><!--/ .section_offset -->
    </div><!--/ .container-->

  </div><!--/ .main_navigation_wrap-->

  <!-- - - - - - - - - - - - - - End of main navigation wrapper - - - - - - - - - - - - - - - - -->

</header>
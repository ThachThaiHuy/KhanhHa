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
              <img src="{{about.logo_header}}" style="margin-left: 10px; margin-top: -50px;" width="" height="115px" alt="{{about.company_name}}">
            </a>
            <!-- - - - - - - - - - - - - - End of logo - - - - - - - - - - - - - - - - -->
          </div><!--/ [col]-->
          <div class="col-sm-10">
            <div class="col-sm-7" style="margin-top: 10px;">
              <h2 class="color-green text_animation company-name"><strong>{{about.company_name}}</strong></h2>
              <h3 class="color-green text_line_2">{{about.company_name_line2}}</h3>
             </div>
            <!-- - - - - - - - - - - - - - End call to action - - - - - - - - - - - - - - - - -->
          <div class="col-sm-5">
            <!-- - - - - - - - - - - - - - Search form - - - - - - - - - - - - - - - - -->
            <form class="clearfix search" action='/tim-kiem-san-pham' id='search' method='get'>
              <input type="text" name="strSearch" tabindex="1" placeholder="<?php echo $t->_("search_holder") ?>" class="alignleft" value="<?php echo isset($strSearch) ? htmlspecialchars_decode($strSearch) : '' ?>" style=" margin-top: 5px;">
              <button class="button_green def_icon_btn alignleft" style=" margin-top: 5px;"></button>
            </form><!--/ #search-->
            <!-- - - - - - - - - - - - - - End search form - - - - - - - - - - - - - - - - -->
           <div class="call_us pull-right">
              <span><?php echo $t->_("host_line") ?></span> <b>{{about.phone}}</b>
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

                  <li class="<?php echo $controllerName == 'home' && $actionName == 'index' ? 'current' : '';?>">
                    <a href="/" class="three-d">
                      <?php echo $t->_("home_page") ?>
                        <span aria-hidden="true" class="three-d-box">
                          <span class="front"><?php echo $t->_("home_page") ?></span>
                          <span class="back"><?php echo $t->_("home_page") ?></span>
                        </span>
                      </a>
                  </li>
                  <li class="<?php echo $controllerName == 'introduce' && $actionName == 'index' ? 'current' : '';?>">
                    <a href="/gioi-thieu" class="three-d">
                      <?php echo $t->_("introduct_page") ?>
                        <span aria-hidden="true" class="three-d-box">
                          <span class="front"><?php echo $t->_("introduct_page") ?></span>
                          <span class="back"><?php echo $t->_("introduct_page") ?></span>
                        </span>
                      </a>
                  </li>
                  <li class="has_submenu <?php echo ($controllerName == 'newproducts' || $controllerName == 'saleproducts' || $controllerName == 'hotproducts'||$controllerName == 'categories') && $actionName == 'index' ? 'current' : '';?>">
                      <a href="#" class="three-d">
                        <?php echo $t->_("product_page") ?>
                        <span aria-hidden="true" class="three-d-box">
                          <span class="front"><?php echo $t->_("product_page") ?></span>
                          <span class="back"><?php echo $t->_("product_page") ?></span>
                        </span>
                        </a>
                      <ul class="theme_menu submenu catalog-menu">
                        {{ partial('partials/catalog')}}
                    </ul>
                  </li>
                  <li class="<?php echo $controllerName == 'partner' && ($actionName == 'index' || $actionName == 'all') ? 'current' : '';?>">
                      <a href="/doi-tac" class="three-d">
                        <?php echo $t->_("partner_page") ?>
                        <span aria-hidden="true" class="three-d-box">
                          <span class="front"> <?php echo $t->_("partner_page") ?></span>
                          <span class="back"> <?php echo $t->_("partner_page") ?></span>
                        </span>
                        </a>
                  </li>         
                  <!-- <li><a href="#">Bài viết</a></li> -->
                  <li class="<?php echo $controllerName == 'contacts' && $actionName == 'index' ? 'current' : '';?>">
                    <a href="/lien-he" class="three-d">
                      <?php echo $t->_("contact_page") ?>
                      <span aria-hidden="true" class="three-d-box">
                        <span class="front"> <?php echo $t->_("contact_page") ?></span>
                        <span class="back"> <?php echo $t->_("contact_page") ?></span>
                      </span>
                    </a></li>
                </ul>

              </nav><!--/ .main_navigation-->

            </div>

            <!-- - - - - - - - - - - - - - End of navigation item - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - -->
            <!-- - - - - - - - - - - - - - End of main navigation - - - - - - - - - - - - - - - - -->
          </div><!--/ .sticky_inner -->

          <!-- - - - - - - - - - - - - - End of sticky container - - - - - - - - - - - - - - - - -->

        </div><!--/ [col]-->

      </div><!--/ .row-->
<div class="section_offset" >

  <!-- <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
  <div id="bootstrap-touch-slider" class="carousel bs-slider slide  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="8000" >

    <!-- Indicators -->
      <ol class="carousel-indicators">
      <?php
        $iBanner = 0;
        foreach ($bannerList as $item) {?>
        <li data-target="#bootstrap-touch-slider" data-slide-to="<?php echo $iBanner;?>" class="<?php echo $iBanner == 0 ? 'active' : ''?>"></li>
        <?php $iBanner ++;}?>
      </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <?php
        $iBanner2 = 0;
        foreach ($bannerList as $item) {?>
        <div class="item <?php echo $iBanner2 == 0 ? 'active' : ''?>" >
          <img src="{{item.image}}" alt="{{item.text}}" class="slide-image" data-animation="animated {{item.animtion}}"/>
                    <!-- <div class="bs-slider-overlay"></div> -->
                    <!-- <div class="container">
                        <div class="row">
                            <div class="slide-text {{item.position_text}}">
                              <h3 data-animation="animated {{item.animtion_text_1}}">{{item.text}}</h3>
                              <div data-animation="animated {{item.animtion_text_2}}"><?php echo htmlspecialchars_decode($item-> text2) ?></div>
                            </div>
                        </div>
                    </div> -->
        </div>
        <?php $iBanner2 ++;}?>
    </div>


      <!-- Controls -->
      <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
      <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
  </div>
        
        <!-- - - - - - - - - - - - - - End of Revolution slider - - - - - - - - - - - - - - - - -->

      </div><!--/ .section_offset -->
    </div><!--/ .container-->

  </div><!--/ .main_navigation_wrap-->

  <!-- - - - - - - - - - - - - - End of main navigation wrapper - - - - - - - - - - - - - - - - -->

</header>
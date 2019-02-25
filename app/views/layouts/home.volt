﻿<!doctype html>
<html lang="en">
  <head>
    <!-- Basic page needs
    ============================================ -->
    <title>{{ titleForLayout }}</title>
    <meta charset="utf-8">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Mobile specific metas
    ============================================ -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="/images/fav.ico">

    {{ partial('partials/common-css')}}
  </head>
  <body class="front_page promo_popup">

    <!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

    <div class="wide_layout">

      <!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->

      {{ partial('partials/header')}}
      
      <!-- - - - - - - - - - - - - - End Header - - - - - - - - - - - - - - - - -->

      <!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

      <div class="page_wrapper">

        <div class="container">

          <div class="row">

            <!-- - - - - - - - - - - - - - Banners - - - - - - - - - - - - - - - - -->

            {{ partial('partials/sidebar-left')}}

            <!-- - - - - - - - - - - - - - End of banners - - - - - - - - - - - - - - - - -->

            <!-- - - - - - - - - - - - - - Main slider - - - - - - - - - - - - - - - - -->

            <main class="col-md-9 col-sm-8">

              {{content()}}

            </main><!--/ [col]-->

            <!-- - - - - - - - - - - - - - End of main slider - - - - - - - - - - - - - - - - -->

          </div><!--/ .row-->

        </div><!--/ .container-->

      </div><!--/ .page_wrapper-->
      
      <!-- - - - - - - - - - - - - - End Page Wrapper - - - - - - - - - - - - - - - - -->

      <!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->
      {{ partial('partials/footer') }}
      
      <!-- - - - - - - - - - - - - - End Footer - - - - - - - - - - - - - - - - -->

    </div><!--/ [layout]-->
    
    <!-- - - - - - - - - - - - - - End Main Wrapper - - - - - - - - - - - - - - - - -->

    <!-- - - - - - - - - - - - - - Social feeds - - - - - - - - - - - - - - - - -->

    <ul class="social_feeds">

      <!-- - - - - - - - - - - - - - Facebook - - - - - - - - - - - - - - - - -->

      <li>

        <button class="icon_btn middle_btn social_facebook open_"><i class="icon-facebook-1"></i></button>

        
        <section class="dropdown">

          <div class="animated_item">

            <h3 class="title">Join Us on Facebook</h3>

          </div><!--/ .animated_item-->

          <div class="animated_item">

            <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FHTBA82005%2F&tabs=timeline&width=235&height=345&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="235" height="345" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>

          </div><!--/ .animated_item-->

        </section><!--/ .dropdown-->

      </li>

      <!-- - - - - - - - - - - - - - End of Facebook - - - - - - - - - - - - - - - - -->
    </ul>

    <script>
    var viewlayout = '<?php echo $viewlayout; ?>';
    var sortby = '<?php echo $sortby; ?>';
    </script>
    <!-- start common-js -->
    {{ partial('partials/common-js') }}
    <!-- end common-js -->
    
  </body>
</html>
<!doctype html>
<html class="fixed">
    <head>

        <!-- Basic -->
        <meta charset="UTF-8">

        <meta name="keywords" content="<?php echo DEFAULT_NAME?>"/>
        <meta name="description" content="Admin - <?php echo DEFAULT_NAME?>">
        <meta name="author" content="">
        <title>Admin - <?php echo DEFAULT_NAME?></title>

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <!-- Web Fonts  -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

        <!-- Vendor CSS -->
        <link rel="stylesheet" href="/themeadmin/vendor/bootstrap/css/bootstrap.css" />

        <link rel="stylesheet" href="/themeadmin/vendor/font-awesome/css/font-awesome.css" />
        <link rel="stylesheet" href="/themeadmin/vendor/magnific-popup/magnific-popup.css" />
        <link rel="stylesheet" href="/themeadmin/vendor/bootstrap-datepicker/css/bootstrap-datepicker3.css" />

        <!-- Theme CSS -->
        <link rel="stylesheet" href="/themeadmin/stylesheets/theme.css" />

        <!-- Skin CSS -->
        <link rel="stylesheet" href="/themeadmin/stylesheets/skins/default.css" />

        <!-- Theme Custom CSS -->
        <link rel="stylesheet" href="/themeadmin/stylesheets/theme-custom.css">

        <!-- Head Libs -->
        <script src="/themeadmin/vendor/modernizr/modernizr.js"></script>

    </head>
    <body>
        <!-- start: page -->
        <section class="body-sign">
            <div class="center-sign">
                <a href="/" class="logo pull-left">
                    <img src="/themeadmin/images/logo.png" height="54" alt="<?php echo DEFAULT_NAME?> Admin" />
                </a>

                <div class="panel panel-sign">
                    <div class="panel-title-sign mt-xl text-right">
                        <h2 class="title text-uppercase text-weight-bold m-none"><i class="fa fa-user mr-xs"></i> Đăng Nhập</h2>
                    </div>
                    <div class="panel-body">
                        <form action="/admin/login" method="post">
                            <div class="form-group mb-lg">
                                <label>Email</label>
                                <div class="input-group input-group-icon">
                                    <?php echo $form->render('email');?>
                                    <?php $messages = $form->getMessagesFor('email');
                                        $message = "";
                                        foreach ($messages as $mess) {
                                            $message .= $mess;
                                        }
                                        echo $message != ""? '<label class="error">'.$message.'</label>' : '';
                                    ?>
                                    <span class="input-group-addon">
                                        <span class="icon icon-lg">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </span>
                                </div>
                            </div>

                            <div class="form-group mb-lg">
                                <div class="clearfix">
                                    <label class="pull-left">Mật khẩu</label>
                                    <!-- <a href="pages-recover-password.html" class="pull-right">Lost Password?</a> -->
                                </div>
                                <div class="input-group input-group-icon">
                                    <?php echo $form->render('password');?>
                                    <?php $messages = $form->getMessagesFor('password');
                                        $message = "";
                                        foreach ($messages as $mess) {
                                            $message .= $mess;
                                        }
                                        echo $message != ""? '<label class="error">'.$message.'</label>' : '';
                                    ?>

                                    <span class="input-group-addon">
                                        <span class="icon icon-lg">
                                            <i class="fa fa-lock"></i>
                                        </span>
                                    </span>
                                </div>
                                <input type="hidden" id="csrf" name="csrf" value="<?php echo $this->security->getToken(); ?>">
                                <?php $messages = $form->getMessagesFor('csrf');
                                    $message = "";
                                    foreach ($messages as $mess) {
                                        $message .= $mess;
                                    }
                                    echo $message != ""? '<label class="error">'.$message.'</label>' : '';
                                ?>
                            </div>

                            <div class="row">
                                <div class="col-sm-8">
                                    <?php
                                        if($countLogin > 3){ ?>
                                            <a href="#" data-toggle="modal" data-target="#reserForm" class="">Đặt Lại Mật Khẩu</a>
                                    <?php }
                                     ?>
                                </div>
                                <div class="col-sm-4 text-right">
                                    <button type="submit" class="btn btn-primary hidden-xs">Đăng Nhập</button>
                                    <button type="submit" class="btn btn-primary btn-block btn-lg visible-xs mt-lg">Đăng Nhập</button>
                                </div>
                            </div>
                            <!-- <p class="text-center">Don't have an account yet? <a href="pages-signup.html">Sign Up!</a> -->

                        </form>
                    </div>
                </div>

                <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2016. All Rights Reserved.</p>
            </div>
        </section>
        <!-- end: page -->

        <!-- Vendor -->
        <script src="/themeadmin/vendor/jquery/jquery.js"></script>

        <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js' />
        <script src="/themeadmin/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
        <script src="/themeadmin/vendor/bootstrap/js/bootstrap.js"></script>
        <script src="/themeadmin/vendor/nanoscroller/nanoscroller.js"></script>
        <script src="/themeadmin/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script src="/themeadmin/vendor/magnific-popup/jquery.magnific-popup.js"></script>
        <script src="/themeadmin/vendor/jquery-placeholder/jquery-placeholder.js"></script>

        <!-- Theme Base, Components and Settings -->
        <script src="/themeadmin/javascripts/theme.js"></script>

        <!-- Theme Custom -->
        <script src="/themeadmin/javascripts/theme.custom.js"></script>

        <!-- Theme Initialization Files -->
        <script src="/themeadmin/javascripts/theme.init.js"></script>

<!--Đổi Mật khẩu modal --->
<div class="modal fade" id="reserForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
            <ul id="progressbar">
                <li class="active"></li>
                <li></li>
                <li></li>
            </ul>
      </div>
      <div class="modal-body">
          <div class="row">
    <div class="col-md-12">
        <form id="msform">
            <!-- progressbar -->
            
            <!-- fieldsets -->
            <fieldset>
                <h2 class="fs-title">Địa chỉ email</h2>
                <h3 class="fs-subtitle">nhập đỉa chỉ email mà bạn muốn đặt lại mật khẩu</h3>
                <input type="email" name="email" placeholder="Email"/>
                <input type="button" name="next" class="next action-button" value="Next"/>
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Xác nhập Mã Code đổi Mật Khẩu</h2>
                <h3 class="fs-subtitle">Nhập mã code trong thư mà bạn đã nhận được</h3>
                <input type="text" name="code" placeholder="Mã xác nhận"/>
                <!-- <input type="button" name="previous" class="previous action-button-previous" value="Previous"/> -->
                <input type="button" name="next" class="next action-button" value="Next"/>
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Nhập mật khẩu mới</h2>
                <h3 class="fs-subtitle">đặt lại mật khẩu</h3>
                <input type="password" name="pass" placeholder="Password"/>
                <input type="password" name="cpass" placeholder="Confirm Password"/>
                <!-- <input type="button" name="previous" class="previous action-button-previous" value="Previous"/> -->
                <input type="submit" name="submit" class="submit action-button" value="Submit"/>
            </fieldset>
        </form>
        <!-- /.link to designify.me code snippets -->
    </div>
</div>
      </div>
    </div>
  </div>
</div>

    </body>
</html>
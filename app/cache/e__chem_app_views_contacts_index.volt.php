<section class="section">
    <div class="container">
        <div id="google-map"  style="height:400px;" class="full-box"></div>
        <div class="">
            <div class="row">
            
                <div class="col-md-12">
                <form class="form-horizontal" role="form" action="/lien-he/add" method="post" id="contact">
                <hr>
                <h3 class="heading-primary mt-15 mb15"><strong>Thông tin ngưới gửi</strong></h3>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name">Tên<span class="color-red">*</span></label>
                        <div class="col-sm-5">
                            <input class="form-control" required name="name" id="name"  maxlength="100" oninput="check(this,100,'Tên')">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="email">Email<span class="color-red">*</span></label>
                        <div class="col-sm-5">
                            <input type="email" class="form-control" required name="email" id="email"  maxlength="100" oninput="check(this,100,'Email')">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="phone">Điện Thoại</label>
                        <div class="col-sm-5">
                            <input class="form-control" type="tel" name="phone" id="phone"  maxlength="20" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" oninput="check(this,20,'Điện Thoại')"><span class="note">Định Dạng: 123-456-7890</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="address">Địa chỉ</label>
                        <div class="col-sm-5">
                            <input class="form-control" name="address" id="address"  maxlength="100"  oninput="check(this,100,'Địachỉ')">
                        </div>
                    </div>
                    <hr>
                    <h3 class="heading-primary mt-15 mb15"><strong>Thông tin gửi</strong></h3>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="title">Tiều Đề<span class="color-red">*</span></label>
                        <div class="col-sm-8 ">
                            <input class="form-control" name="title" id="title"  maxlength="200" required oninput="check(this,200,'Tiêu Đề')">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="content">Nôi Dung<span class="color-red">*</span></label>
                        <div class="col-sm-8">
                            <textarea class="form-control" name="content" id="content" required   maxlength="500" rows="10" oninput="check(this,500,'Nội Dung')"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-8">
                            <button class="btn btn-success " type="submit" >Gửi </button>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <hr>

                    <h3 class="heading-primary mt-15 mb15"><strong>Thông tin chung</strong></h3>
                    <ul class="list list-icons list-icons-style-3 mt-xlg">
                        <li><i class="fa fa-map-marker"></i> <strong>Địa chỉ:</strong> <?php echo $about -> address?></li>
                        <li><i class="fa fa-phone"></i> <strong>Số điện thoại:</strong> <?php echo $about -> phone?></li>
                        <li><i class="fa fa-envelope"></i> <strong>Email:</strong> <a href="mailto:<?php echo $about -> email?>" class="color-blue"><?php echo $about -> email?></a></li>
                    </ul>

                    <hr>

                    <!-- <h4 class="heading-primary">Business <strong>Hours</strong></h4>
                    <ul class="list list-icons list-dark mt-xlg">
                        <li><i class="fa fa-clock-o"></i> Monday - Friday 9am to 5pm</li>
                        <li><i class="fa fa-clock-o"></i> Saturday - 9am to 2pm</li>
                        <li><i class="fa fa-clock-o"></i> Sunday - Closed</li>
                    </ul> -->

                </div>

            </div>

        </div>
    </div>
</section>
<script src="http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyC32tJGWb0S6LpHFntcIH4k1vOAK1TEPZ8"></script>
<script type="text/javascript">
    $(document).ready(function() {
        ContactUs.init();
    });
    var ContactUs = function () {
        return {
            init: function () {
                $(document).ready(function(){

                    var uluru = {lat: 10.839125, lng:106.752440};
                    var map = new google.maps.Map(document.getElementById('google-map'), {
                        zoom: 16,
                        center: uluru
                    });
                    var marker = new google.maps.Marker({
                        position: uluru,
                        map: map,
                        title: 'Thành phố Hồ Chí Minh'
                    });
                    var infowindow = new google.maps.InfoWindow({
                        content: '<div class="contact-map-title"><strong>' + <?php echo "'".DOMAIN_NAME."'"?> + '</strong></div><div class="contact-map-title"><a href="#">' + <?php echo "'".$about -> phone."'";?> + '</a></div><div class="contact-map-address"><?php echo $about -> address?></div>'
                    });
                    infowindow.open(map, marker);
                });
            }
        };
    }();
</script>
<script language="javascript" src="/js/jquery.validate.min.js" type="text/javascript"></script>
<!-- <script src="/js/contact/contact.js"></script> -->
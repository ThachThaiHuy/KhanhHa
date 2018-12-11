<section class="section">
    <div class="container">
        <!-- <div id="google-map"  style="height:400px;" class="full-box"></div> -->
        <div class="">
            <div class="row">
            
                <div class="col-md-12">
                <form class="form-horizontal" role="form" action="/lien-he/add" method="post" id="contact">
                <hr>
                <h3 class="heading-primary mt-15 mb15"><strong><?php echo $t->_('people_send_info') ?></strong></h3>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name"><?php echo $t->_('name_text') ?><span class="color-red">*</span></label>
                        <div class="col-sm-5">
                            <input class="form-control" required name="name" id="name"  maxlength="100" oninput="check(this,100,'<?php echo $t->_('name_text') ?>')">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="email"><?php echo $t->_('email_text') ?><span class="color-red">*</span></label>
                        <div class="col-sm-5">
                            <input type="email" class="form-control" required name="email" id="email"  maxlength="100" oninput="check(this,100,'<?php echo $t->_('email_text') ?>')">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="phone"><?php echo $t->_('phone_text') ?></label>
                        <div class="col-sm-5">
                            <input class="form-control" type="tel" name="phone" id="phone"  maxlength="20" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" oninput="check(this,20,'<?php echo $t->_('phone_text') ?>')"><span class="note"><?php echo $t->_('phone_format_text') ?></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="address"><?php echo $t->_('adress_text') ?></label>
                        <div class="col-sm-5">
                            <input class="form-control" name="address" id="address"  maxlength="100"  oninput="check(this,100,'<?php echo $t->_('adress_text') ?>')">
                        </div>
                    </div>
                    <hr>
                    <h3 class="heading-primary mt-15 mb15"><strong><?php echo $t->_('send_info') ?></strong></h3>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="title"><?php echo $t->_('send_title') ?><span class="color-red">*</span></label>
                        <div class="col-sm-8 ">
                            <input class="form-control" name="title" id="title"  maxlength="200" required oninput="check(this,200,'<?php echo $t->_('send_title') ?>')">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="content"><?php echo $t->_('send_content') ?><span class="color-red">*</span></label>
                        <div class="col-sm-8">
                            <textarea class="form-control" name="content" id="content" required   maxlength="500" rows="10" oninput="check(this,500,'<?php echo $t->_('send_content') ?>')"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-8">
                            <button class="btn btn-success " type="submit" ><?php echo $t->_('send_text') ?> </button>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <hr>

                    <h3 class="heading-primary mt-15 mb15"><strong><?php echo $t->_('company_info') ?></strong></h3>
                    <ul class="list list-icons list-icons-style-3 mt-xlg">
                        <li><i class="fa fa-map-marker"></i> <strong><?php echo $t->_('adress_text') ?>:</strong> <?php echo $about -> address?></li>
                        <li><i class="fa fa-phone"></i> <strong><?php echo $t->_('phone_text') ?>:</strong> <?php echo $about -> phone?></li>
                        <li><i class="fa fa-envelope"></i> <strong><?php echo $t->_('email_text') ?>:</strong> <a href="mailto:<?php echo $about -> email?>" class="color-blue"><?php echo $about -> email?></a></li>
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

<script language="javascript" src="/js/jquery.validate.min.js" type="text/javascript"></script>
<!-- <script src="/js/contact/contact.js"></script> -->
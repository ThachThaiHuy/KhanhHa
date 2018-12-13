<div class="content animate-panel">
    <div class="row">
        <div class="hpanel">
            <div class="panel-body">
                <?php if($this->flashSession->has()) {?>
                    <?php echo $this->flashSession->output();
                    $this -> flashSession -> clear(); ?>
                <?php } ?>
                <form class="form-horizontal" role="form" action="/admin/managebanner/edit/{{banner.id}}" method="post" id="addPosts" enctype="multipart/form-data">

                   <div class="form-group">
                        <label class="col-sm-2 control-label">Tiêu Đề</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text" name="title" id="title" value={{banner.text}}/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Animation</label>
                        <div class="col-sm-5">
                            <select class="form-control" name="animation_title">
                                <?php foreach($animation as $item){ ?>
                                    <option value="{{item}}" <?php echo $banner->animtion_text_1 == $item ? 'selected' : ''?> >{{item}} </option>
                                <?php } ?>
                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Mô tả</label>
                        <div class="col-sm-10">
                            <textarea name="descrtiption" id="descrtiption" >{{banner.text2}}</textarea>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Animation</label>
                        <div class="col-sm-5">
                            <select class="form-control" name="animation_desctiption">
                                <?php foreach($animation as $item){ ?>
                                    <option value="{{item}}" <?php echo $banner->animtion_text_2 == $item ? 'selected' : ''?> >{{item}} </option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Vị Trí</label>
                        <div class="col-sm-5">
                            <select class="form-control" name="text_position">
                                <?php 
                                    for ($x = 0; $x < count($postion); $x++) {?>
                                        <option value="{{postion_value[x]}}" <?php echo $banner->position_text == $postion_value[$x] ? 'selected' : ''?> >{{postion[x]}} </option>
                                    <?php } 
                                    ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Image</label>
                        <div class="col-sm-10">
                            <input value="{{banner.image}}" readonly placeholder="click choose image" type="text" name="image" id="image1" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Animation</label>
                        <div class="col-sm-5">
                            <select class="form-control" name="animation_image">
                                <?php foreach($animation as $item){ ?>
                                    <option value="{{item}}" <?php echo $banner->animtion == $item ? 'selected' : ''?> >{{item}} </option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-4">
                            <button id="btnSubmit" type="submit" class="btn btn-primary">
                                Submit
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script language="javascript" src="/themeadmin/ckeditor/ckeditor.js" type="text/javascript"></script>
<script language="javascript" src="/themeadmin/scripts/banner/edit.js" type="text/javascript"></script>
<script language="javascript" src="/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#addBanner").validate({
            ignore: "",
           // onsubmit: false,
            onfocusout: function(element, event) {
                if ($(element).valid()) {
                    $(element).closest("div.form-group").removeClass("has-error");
                    //$(element).closest("div.form-group").addClass("has-success");
                    $(element).closest("div.form-group").find("label.error").remove();
                }
            },

            onkeyup: function(element, event) {
                $(element).valid();
            },

            errorPlacement: function(error, element) {
                $(element).closest("div.form-group").addClass("has-error");
                //$(element).closest("div.form-group").removeClass("has-success");
                error.insertAfter(element);
            },

            invalidHandler: function(form, validator) {
                if (!validator.numberOfInvalids()) {
                    return;
                }
            }
        });
        $('#image1').rules("add", {
            required: true,
            minlength: 2,
            maxlength:100,
        });
    });
</script>
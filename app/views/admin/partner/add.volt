<script language="javascript" src="/js/jquery.validate.min.js" type="text/javascript"></script>
<script language="javascript" src="/themeadmin/ckeditor/ckeditor.js" type="text/javascript"></script>
<div class="content animate-panel">
    <div class="row">
        <div class="hpanel">
            
            <div class="panel-body">
                <form class="form-horizontal" method="post" id="addCategory" action="/admin/partner/add">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-6">
                            <input name="name" type="text" class="form-control" id="name" maxlength="100">
                        </div>
                    </div>
                    <div class= "form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-6">
                            <img src="" class="col-sm-offset-2 col-sm-6 imageUpload img-responsive pl0 pr0" id="image_thumbnail_show" style="width: 130px; height: 130px;">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Image for Partner (800 x 800px)</label>
                        <div class="col-sm-6">
                            <input class="form-control" value="" name="image" id="image"  type="hidden">
                            <a class="btn btn-primary" href="javascript:void(0)" onclick="openKCFinder('image','image_thumbnail_show')"><i class="fa fa-folder-open-o"></i> Chọn Hình Ảnh</a>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-6">
                            <button class="btn btn-primary" type="submit" id="btnSubmit">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script language="javascript" src="/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#addCategory").validate({
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
        $('#name').rules("add", {
            required: true,
            minlength: 2,
            maxlength:100,
        });
    });
</script>


<div id="myModal" class="modal fade hmodal-info" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Notification</h4>
            </div>
            <div class="modal-body">
                <p class='modal-text'>Some text in the modal.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function openKCFinder(input, id) {
        window.KCFinder = {
            callBackMultiple: function(files) {
                window.KCFinder = null;
                $("#" + input).value = "";
                if (files.length > 1) {
                    showPopupMessage("notification", "Please choose one file");
                    return;
                }
                for (var i = 0; i < files.length; i++) {
                    $("#" + input).val(files[i]);
                    $("#" + id).prop("src", files[i]);
                }
            }
        };
        window.open('/themeadmin/kcfinder/browse.php?type=images',  'kcfinder_multiple', 'status=0, toolbar=0, location=0, menubar=0, ' +
        'directories=0, resizable=1, scrollbars=0, width=800, height=600');
    }
</script>
<div class="content animate-panel">
    <div class="row">
        <div class="hpanel">
            
            <div class="panel-body">
                <form class="form-horizontal" method="post" id="addCategory" action="/admin/managemanufactures/add">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-6">
                            <input name="name" type="text" class="form-control" id="name" maxlength="100">
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
<header class="header">
    <div class="logo-container">
        <a href="../" class="logo">
            <img src="{{about.logo_header}}" height="35" alt="{{about.company_name}}" />
        </a>
        <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
            <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
        </div>
    </div>

    <!-- start: search & user box -->
    <div class="header-right">
        <span class="separator"></span>
        <div id="userbox" class="userbox">
            <a href="#" data-toggle="dropdown">
                <figure class="profile-picture">
                    <img src="{{user["avatar"]}}" class="img-circle" data-lock-picture="{{user["avatar"]}}" />
                </figure>
                <div class="profile-info" data-lock-name="{{user["username"]}}" data-lock-email="{{user["email"]}}">
                    <span class="name">{{user["username"]}}</span>
                    <span class="role">{{user["role"]}}</span>
                </div>
                <i class="fa custom-caret"></i>
            </a>
            <div class="dropdown-menu">
                <ul class="list-unstyled">
                    <li class="divider"></li>
                    <?php
                        if($user["role_id"] == 1){ ?>
                            <li>
                            <a role="menuitem" tabindex="-1" href="#" data-toggle="modal" data-target="#adminManager"><i class="fa fa-users" aria-hidden="true"></i> Quản lý Admin</a>
                        </li>
                        <?php }
                    ?>
                    <li>
                        <a role="menuitem" tabindex="-1" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-key" aria-hidden="true"></i> Đổi Mật Khẩu</a>
                    </li>
                    <li>
                        <a role="menuitem" tabindex="-1" href="#" data-lock-screen="true" ><i class="fa fa-lock"></i> Lock Screen</a>
                    </li>
                    <li>
                        <a role="menuitem" tabindex="-1" href="/admin/logout"><i class="fa fa-power-off"></i> Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- end: search & user box -->
</header>
<!--Đổi Mật khẩu modal --->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <div class="col-md-10"><h5 class="modal-title" id="exampleModalLabel">Đổi Mật Khẩu</h5> </div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="change_pass">
      <div class="modal-body">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Mật Khẩu Củ</label>
            <input type="password" class="form-control" id="old-pass" name="old-pass" required maxlength = "50" minlength="6" />
          </div>
          <div class="form-group">
            <label for="new-pass" class="col-form-label">Mật Khẩu Mới</label>
            <input type="password" class="form-control" id="new-pass" name="new-pass" required maxlength = "50" minlength="6" />
          </div>
          <div class="form-group">
            <label for="re-new-pass" class="col-form-label">Xác Nhận Mật Khẩu</label>
            <input type="password" class="form-control" id="re-new-pass" name="re-new-pass" required maxlength = "50" minlength="6" />
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" id="btn-change" class="btn btn-primary">Change</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!--Quản lý admin modal --->
<div class="modal fade" id="adminManager" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <div class="col-md-10"><h5 class="modal-title" id="exampleModalLabel">Quản Lý Admin</h5> </div>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="form-content">
            <form id="add_admin">
            <div class="form-group">
            <div class="col-md-10"><input type="email" name="Email" class="form-control" tabindex="1" placeholder="Email" class="alignleft" value="" maxlength = "50" required></div>
          </div>
          <div class="form-group">
            <div class="col-md-10"><input type="text" name="Name" class="form-control" tabindex="1" placeholder="Tên Hiển Thị" class="alignleft" value="" maxlength = "100" required></div>
            <div class="col-md-2"><button type="submit" id="btn-change" class="btn btn-primary"><i class="fa fa-user-plus" aria-hidden="true"></i></button> </div>
          </div>
            </form>
        </div>
        <div id="table-content">

        </div>
          
        
      </div>
    </div>
  </div>
</div>

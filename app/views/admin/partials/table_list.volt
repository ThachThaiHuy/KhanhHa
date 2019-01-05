<div class="table-responsive">
    <table cellpadding="1" cellspacing="1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Email</th>
            <th>Tên Hiển Thị</th> 
            <th>lock</th>
        </tr>
        </thead>
        <tbody>

        <?php if(count($items) > 0){ foreach($items as $item){?>
            <tr>
                <td> {{item.email}}</td>
                <td> {{item.name}}</td>
                <td>  </td>
            </tr>
        <?php }} else{ ?>
            <tr class ="not-item"><td colspan="3"> Không có admin nào </td> </td> </tr>
       <?php }?>
        </tbody>
    </table>
</div>
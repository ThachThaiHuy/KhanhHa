<?php
namespace MyApp\Controllers\Admin;
use Phalcon\Mvc\Controller;
use Phalcon\Mvc\View;
use Phalcon\Http\Response;
use MyApp\Model\Users;
use MyApp\MyEmail;

class ManageController extends Controller {

    public function addAction() {
        $user = new Users();
        $email = htmlspecialchars($this -> request -> getPost('Email'), ENT_QUOTES);
        $name = htmlspecialchars($this -> request -> getPost('Name'), ENT_QUOTES);
        $temp = $user -> findFirst(array("deleted = 0 and email = '".$email."'"));
        if ($temp == false) {
        	$user -> email = $email;
	        $user -> name = $name;
	        
	        $pass = $this -> RandomString(10);
	        $user -> password = sha1($pass);
	        $user -> role_id = 2;
	        $user -> setParamsForNew($this->user['id']);
	        if($user ->save()){
	        	$mail = new MyEmail();
	            $mail -> sendRegisterEvent("Đăng Ki Admin",$user,$pass);
	            $html = "<tr>
			                <td> %s </td>
			                <td> %s </td>
			                <td>  </td>
			            </tr>";
			    $html = sprintf($html, $email, $name);
	        	$arr = array('message'=>'Đăng Kí Admin Thành Công','data' => $html,'status' => '1');
	        }
	        else
	        {
	        	$arr = array('message'=>'Đăng Kí Admin Không Thành Công','data' => '','status' => '0');
	        }

        }
        else
        {
        	$arr = array('message'=>'Email Đã Được Đăng Kí','data' => '','status' => '0');
        }
        echo json_encode($arr);
        exit;        
    }

    public function UpdateCodeAction(){
    	$user = new Users();
    	$email = htmlspecialchars($this -> request -> getPost('email'), ENT_QUOTES);
    	$user = $user -> findFirst(array("deleted = 0 and email = '".$email."'"));
        if ($user == false) 
        {
        	$arr = array('message'=>'Email nhập không tồn tại trong danh sách','data' => '','status' => '0');
        }
        else
        {
        	$code = $this->RandomString(4);
        	$user -> code = $code;
        	$user -> setParamsForUpdate(-1);
        	if($user ->save()){
        		$mail = new MyEmail();
	            $mail -> sendResetPassword("Đặt lại mật khẩu",$user);
	            $arr = array('message'=>'','data' => '','status' => '1');
        	}
        	else{
        		$arr = array('message'=>'Có lổi xay ra trong lúc thực hiện','data' => '','status' => '0');
        	}

        }
        echo json_encode($arr);
        exit;   
    }

    public function CheckCodeAction(){
        $user = new Users();
        $email = htmlspecialchars($this -> request -> getPost('email'), ENT_QUOTES);
        $code = htmlspecialchars($this -> request -> getPost('code'), ENT_QUOTES);
        $user = $user -> findFirst(array("deleted = 0 and email = '".$email."'"));
        if ($user == false) 
        {
            $arr = array('message'=>'Bạn vừa nhập email không tồn tại','data' => '','status' => '0');
        }
        else
        {
            if($user->code != $code)
            {
                $arr = array('message'=>'Mã xác nhận bạn nhập không đúng','data' => '','status' => '0');
            }
            else{
                $arr = array('message'=>'','data' => '','status' => '1');
            }
            
        }
        echo json_encode($arr);
        exit;   
    }
    public function ChangePassAction(){
        $user = new Users();
        $email = htmlspecialchars($this -> request -> getPost('email'), ENT_QUOTES);
        $pass = htmlspecialchars($this -> request -> getPost('pass'), ENT_QUOTES);
        $passComfirm = htmlspecialchars($this -> request -> getPost('cpass'), ENT_QUOTES);
        if($pass != $passComfirm){
            $arr = array('message'=>'Mật khẩu xác nhận không giông với mật khẩu nhập','data' => '','status' => '0');
            echo json_encode($arr);
            exit();  
        }
        $user = $user -> findFirst(array("deleted = 0 and email = '".$email."'"));
        if ($user == false) 
        {
            $arr = array('message'=>'Bạn vừa nhập email không tồn tại','data' => '','status' => '0');
        }
        else
        {
            $user -> password = sha1($pass);
            $user -> setParamsForUpdate(-1);
            $user -> code = 1;
            if($user ->save()){
                $arr = array('message'=>'Đặt lại mật khẩu thành công','data' => '','status' => '1');
            }
            else
            {
                $arr = array('message'=>'Có lổi xay ra trong lúc thực hiện','data' => '','status' => '0');
            }
        }
        echo json_encode($arr);
        exit;   
    }
    function RandomString($count)
	{
	    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	    $randstring = '';
	    for ($i = 0; $i < $count; $i++) {
	        $randstring .= $characters[rand(0, strlen($characters)-1)].'';
	    }
	    return $randstring;
	}
}
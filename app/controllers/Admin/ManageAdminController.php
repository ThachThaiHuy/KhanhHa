<?php
namespace MyApp\Controllers\Admin;
use Phalcon\Mvc\Controller;
use Phalcon\Mvc\View;
use Phalcon\Http\Response;
use MyApp\Model\Users;
use MyApp\MyEmail;

class ManageadminController extends ControllerBase {

	public function getAdminAction() {
        $userModel = new Users();
        $user = $userModel -> find(array("deleted = 0 and role_id = 2"));
        $view = clone $this->view;
        $view->start();
        $view->setVar("items", $user);
        $view->setRenderLevel(View::LEVEL_ACTION_VIEW);
        $view->render('admin/partials', 'table_list');
        $view->finish();
        $html = $view->getContent();
        $arr = array('data' => $html);
        echo json_encode($arr);
        exit;        
    }

    public function addAction() {
        $user = new Users();
        $email = htmlspecialchars($this -> request -> getPost('Email'), ENT_QUOTES);
        $name = htmlspecialchars($this -> request -> getPost('Name'), ENT_QUOTES);
        $temp = $user -> findFirst(array("deleted = 0 and email = '".$email."'"));
        if ($temp == false) {
        	$user -> email = $email;
	        $user -> name = $name;
	        
	        $pass = $this -> RandomString();
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

    function RandomString()
	{
	    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	    $randstring = '';
	    for ($i = 0; $i < 10; $i++) {
	        $randstring .= $characters[rand(0, strlen($characters))].'';
	    }
	    return $randstring;
	}
}
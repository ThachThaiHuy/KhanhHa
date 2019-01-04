<?php
namespace MyApp\Controllers\Admin;
use Phalcon\Mvc\Controller;
use Phalcon\Mvc\View;
use Phalcon\Http\Response;
use MyApp\Forms\LoginForm;

class ManageloginController extends Controller
{

    public function onConstruct() {

    }

    public function afterExecuteRoute() {
        $this->view->setViewsDir($this->view->getViewsDir() . 'admin/');
    }

    public function indexAction() {
        //disable layout
        $this->session->set('lock-status', false);
        $count_login = $this->session->get('count_login');
        if($count_login == null){
            $count_login = 0;
        }
        $this->view->disableLevel(array(View::LEVEL_LAYOUT => true));
        $form = new LoginForm();
        $response = new Response();
        $message = "";
        $identity = $this->auth->getIdentityAdmin();
        if (is_array($identity)) {
            return $response->redirect('/admin/managesites');
        }
        if ($this->request->isPost()) {
            if($count_login <= 3){
                if ($form->isValid($this->request->getPost()) == true) {
                    $arr['email']      = $this->request->getPost('email');
                    $arr['password']   = $this->request->getPost('password');
                    $arr['remember']   = $this->request->getPost('rememberme');

                    if ($this->auth->checkAdmin($arr)) {

                        return $response->redirect("/admin/managesites");
                    }
                    $count_login ++;
                    $this->session->set('count_login', $count_login);
                    $message = 'Mật khẩu hoặc email bạn nhập đã bị sai';
                    //return $response->redirect("admin/login");
                }
            }
            else{
                $message = 'Bạn đã nhập sai mật khẩu quá nhiều lần';
            }
        }
        $this->view->messageWrong = $message;
        $this->view->countLogin = $count_login;
        $this -> view -> form = $form;

    }

   public function LockAction() {
            $this->session->set('lock-status', true);
            $arr = array('message' => "Lock");
            echo json_encode($arr);
            exit;
            //return $response->redirect("admin/login");        
    }
   public function checkPassAction() {
                $arr['password']   = $this->request->getPost('pwd');
                if ($this->auth->checkPassAdmin($arr)) {
                    $this->session->set('lock-status', false);
                    $arr = array('message' => "");
                    echo json_encode($arr);
                    exit;
                }
                $arr = array('message' => "Vui Lòng nhập lại Mật Khẩu");
                echo json_encode($arr);
                exit;
                //return $response->redirect("admin/login");        
    }
   public function ChangePassAction() {
            $arr['password']   = $this->request->getPost('old-pass');
            if ($this->auth->checkPassAdmin($arr)) {
                $newPass = $this->request->getPost('new-pass');
                $reNewPass = $this->request->getPost('re-new-pass');
                if($newPass == $reNewPass){
                    if($this->auth->ChangePassAdmin($newPass)){
                        $arr = array('message' => "Cập nhật mật khẩu thành công","status" => "1");
                    }
                    else{
                        $arr = array('message' => "Cập nhật mật khẩu thất bại","status" => "2");
                    }
                }
                else
                {
                    $arr = array('message' => "Mật khẩu xác nhân không đúng","status" => "2");
                }
                
                
                echo json_encode($arr);
                exit;
            }
            $arr = array('message' => "Mật khẩu không đúng. Vui lòng nhập lại ","status" => "2");
            echo json_encode($arr);
            exit;
            //return $response->redirect("admin/login");        
    }
    public function logoutAction() {
        $this -> auth ->removeForAdmin();
        return $this->response->redirect('admin/login');
    }
}
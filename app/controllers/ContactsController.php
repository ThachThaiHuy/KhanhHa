<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\View;
use MyApp\Model\Contacts;
use MyApp\Model\Abouts;
use MyApp\MyEmail;
class ContactsController extends ControllerBase
{

    public function indexAction() {
        $this -> view -> setLayout('home_no_leftsidebar');
        $this -> view -> titleForLayout = "Liên hệ - ".DEFAULT_NAME;
        $this -> view -> saleKeyWords = "Liên hệ - ".DEFAULT_NAME;
    }
    public function addAction() {
        $this -> view -> titleForLayout = "Liên hệ";
        $this -> view -> title     =  "Liên hệ";
        $this -> view -> pageHeader = "Liên hệ";
        $this->flashSession->clear();
        if ($this->request->isPost()) {
            $contacts = new Contacts();
            $contacts -> name = htmlspecialchars($this->request ->getPost('name'),ENT_QUOTES);
            $contacts -> adress = htmlspecialchars($this->request ->getPost('address'),ENT_QUOTES);
            $contacts -> email = htmlspecialchars($this->request ->getPost('email'),ENT_QUOTES);
            $contacts -> phone = htmlspecialchars($this->request ->getPost('phone'),ENT_QUOTES);
            $contacts -> title = htmlspecialchars($this->request ->getPost('title'),ENT_QUOTES);
            $contacts -> message = htmlspecialchars($this->request ->getPost('content'),ENT_QUOTES);
            $contacts -> setParamsForNew(0);
            if ($contacts -> save()) {
                $about = Abouts::findFirst(array("deleted = 0"));
                $mail = new MyEmail();
                $mail -> sendContactPage($about -> email,DEFAULT_NAME ,$contacts -> title , $contacts);
                $this->flashSession->success("Thêm thành công!!");
                
            } 
            else{
                $this->flashSession->success("Thêm thành công!!");
            }
            return $this->response->redirect("/lien-he/");

        }
    }
}


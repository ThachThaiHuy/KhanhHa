<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\View;
use MyApp\Model\Contacts;
use MyApp\Model\Products;
use MyApp\MyEmail;
class ContactsController extends ControllerBase
{

    public function indexAction() {
        $title_send = "";
        $text = $this -> tranlate->_('contact_page');
        $this -> view -> setLayout('home_no_leftsidebar');
        $this -> view -> titleForLayout = $text." - ".DEFAULT_NAME;
        $this -> view -> saleKeyWords = $text." - ".DEFAULT_NAME;
        if ($this->request->isPost()) {
            $id = htmlspecialchars($this->request ->getPost('id'),ENT_QUOTES);
            $products = new Products();
            $product = $products -> findById($id);
            $title_send = $this -> tranlate->_('contact_for', ['name' => $product -> name]);
        }
        $this -> view -> title_send = $title_send;
    }
    public function addAction() {
        $text = $this -> tranlate->_('contact_page');
        $this -> view -> titleForLayout = $text;
        $this -> view -> title     =  $text;
        $this -> view -> pageHeader = $text;
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
                $about = $this -> view -> about;
                $mail = new MyEmail();
                $mail -> sendContactPage($about -> email,DEFAULT_NAME ,$contacts -> title , $contacts);
                $this->flashSession->success("Thêm thành công!!");
                
            } 
            else{
                $this->flashSession->success("Thêm Thất Bại!!");
            }
            return $this->response->redirect("/");

        }
    }
}


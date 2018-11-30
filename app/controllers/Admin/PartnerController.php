<?php
namespace MyApp\Controllers\Admin;
use MyApp\Model\Partner;
use Phalcon\Paginator\Adapter\Model as PaginatorModel;

class PartnerController extends ControllerBase {

    public function indexAction() {
        $this -> view->titleForLayout   = "Đối Tác";
        $this-> view->pageHeader        = "Đối Tác";
        $this -> view -> title          = "Đối Tác";
        $partner = new Partner();
        $partner = $partner -> findAll();

        if (empty($_GET["page"])) {
            $currentPage = 1;
        } else {
            $currentPage = (int) $_GET["page"];
        }
        $paginator = new PaginatorModel(
            array(
                "data"  => $partner,
                "limit" => ITEM_PER_PAGE,
                "page"  => $currentPage
            )
        );
        // Get the paginated results
        $page = $paginator->getPaginate();
        $this -> view -> data           = $page;
        $this -> view -> currentPage    = $currentPage;

    }

    public function addAction() {
        $this -> view->titleForLayout = "Thêm mới đối tác";
        $this -> view->pageHeader      = "Thêm mới đối tác";
        $this -> view -> title          = "Đối Tác";


        if ($this->request->isPost()) {
            $image = $this -> request -> getPost('image');
            if($image == "") {
                $this -> flashSession->error("Can't save partner. Please choose image.");
                return $this -> response -> redirect("/admin/partner/add");
            }
            $partner = new Partner();
            $partner -> image       = $image;
            $partner -> text        = $this -> request -> getPost('text');
            $partner -> text2        = $this -> request -> getPost('text2');
            $partner -> setParamsForNew($this->user['id']);

            if ($partner -> save()) {
                $this -> flashSession -> success("Save partner successfully!");
            } else {
                $this -> flashSession->error("Can't save partner");
                /*foreach ($posts->getMessages() as $message) {
                   echo $message, "\n";
                   exit();
                }*/
            }
            return $this -> response -> redirect("/admin/partner");
        }
    }


    public function editAction($id) {
        $this -> view->titleForLayout = "Edit partner";
        $this-> view->pageHeader = "Edit partner";
        $partner = new Partner();
        $partner = $partner -> findById($id);
        if($partner == false) {
            $this -> flashSession -> success("Can't found partner!");
            return $this -> response -> redirect("/admin/partner/");
        }
        $this -> view -> partner = $partner;
        if ($this->request->isPost()) {
            $image = $this -> request -> getPost('image');
            if($image == "") {
                $this -> flashSession->error("Can't save partner. Please choose image.");
                return $this -> response -> redirect("/admin/partner/edit/".$id);
            }
            $partner -> image       = $this -> request -> getPost('image');
            $partner -> text        = $this -> request -> getPost('text');
            $partner -> text2        = $this -> request -> getPost('text2');
            $partner -> setParamsForUpdate($this->user['id']);

            if ($partner -> save()) {
                $this -> flashSession -> success("Save partner successfully!");
            } else {
                $this -> flashSession->error("Can't save partner");
                /*foreach ($posts->getMessages() as $message) {
                   echo $message, "\n";
                   exit();
                }*/
            }
            return $this -> response -> redirect("/admin/partner");
        }
    }

    public function deleteAction($id) {
        $this->flashSession->clear();
        $partner = new Partner();
        if ($partner -> deleteById($id) == true ) {
            $this->flashSession->success("Delete partner successfully!");
        } else {
            $this->flashSession->error("Can't delete partner");
        }
        return $this->response->redirect("/admin/managepartner/");
    }
}
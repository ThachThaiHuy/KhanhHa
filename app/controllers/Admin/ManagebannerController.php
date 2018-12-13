<?php
namespace MyApp\Controllers\Admin;
use MyApp\Model\Banner;
use Phalcon\Paginator\Adapter\Model as PaginatorModel;

class ManagebannerController extends ControllerBase {
    
    public function indexAction() {
        $this -> view->titleForLayout   = "Banner";
        $this-> view->pageHeader        = "Banner";
        $this -> view -> title          = "Banner";
        $banner = new Banner();
        $banner = $banner -> findAll();

        if (empty($_GET["page"])) {
            $currentPage = 1;
        } else {
            $currentPage = (int) $_GET["page"];
        }
        $paginator = new PaginatorModel(
            array(
                "data"  => $banner,
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
        $this -> getValue();
        $this -> view->titleForLayout = "Add Banner";
        $this -> view->pageHeader      = "Add Banner";
        $this -> view -> title          = "Banner";


        if ($this->request->isPost()) {
            $image = $this -> request -> getPost('image');
            if($image == "") {
                $this -> flashSession->error("Can't save Banner. Please choose image.");
                return $this -> response -> redirect("/admin/managebanner/add");
            }
            $banner = new Banner();
            $banner -> image = htmlspecialchars($image, ENT_QUOTES);
            $banner -> text  = htmlspecialchars($this -> request -> getPost('title'), ENT_QUOTES);;
            $banner -> text2  = htmlspecialchars($this -> request -> getPost('descrtiption'), ENT_QUOTES);
            $banner -> animtion_text_1 = htmlspecialchars($this -> request -> getPost('animation_title'), ENT_QUOTES);
            $banner -> animtion_text_2 = htmlspecialchars($this -> request -> getPost('animation_desctiption'), ENT_QUOTES);
            $banner -> position_text = htmlspecialchars($this -> request -> getPost('text_position'), ENT_QUOTES);
            $banner -> animtion = htmlspecialchars($this -> request -> getPost('animation_image'), ENT_QUOTES);
            $banner -> setParamsForNew($this->user['id']);

            if ($banner -> save()) {
                $this -> flashSession -> success("Save Banner successfully!");
            } else {
                $this -> flashSession->error("Can't save Banner");
                /*foreach ($posts->getMessages() as $message) {
                   echo $message, "\n";
                   exit();
                }*/
            }
            return $this -> response -> redirect("/admin/managebanner");
        }
    }


    public function editAction($id) {
        $this -> getValue();
        $this -> view-> titleForLayout = "Edit Banner";
        $this-> view-> pageHeader = "Edit Banner";

        $banner = new Banner();
        $banner = $banner -> findById($id);
        if($banner == false) {
            $this -> flashSession -> success("Can't found Banner!");
            return $this -> response -> redirect("/admin/managebanner/");
        }
        $this -> view -> banner = $banner;
        if ($this->request->isPost()) {
            $image = $this -> request -> getPost('image');
            if($image == "") {
                $this -> flashSession->error("Can't save Banner. Please choose image.");
                return $this -> response -> redirect("/admin/managebanner/edit/".$id);
            }
            $banner -> image = htmlspecialchars($this -> request -> getPost('image'), ENT_QUOTES);
            $banner -> text  = htmlspecialchars($this -> request -> getPost('title'), ENT_QUOTES);;
            $banner -> text2  = htmlspecialchars($this -> request -> getPost('descrtiption'), ENT_QUOTES);
            $banner -> animtion_text_1 = htmlspecialchars($this -> request -> getPost('animation_title'), ENT_QUOTES);
            $banner -> animtion_text_2 = htmlspecialchars($this -> request -> getPost('animation_desctiption'), ENT_QUOTES);
            $banner -> position_text = htmlspecialchars($this -> request -> getPost('text_position'), ENT_QUOTES);
            $banner -> animtion = htmlspecialchars($this -> request -> getPost('animation_image'), ENT_QUOTES);
            $banner -> setParamsForUpdate($this->user['id']);

            if ($banner -> save()) {
                $this -> flashSession -> success("Save Banner successfully!");
            } else {
                $this -> flashSession->error("Can't save Banner");
                /*foreach ($posts->getMessages() as $message) {
                   echo $message, "\n";
                   exit();
                }*/
            }
            return $this -> response -> redirect("/admin/managebanner");
        }
    }

    public function deleteAction($id) {
        $this->flashSession->clear();
        $banner = new Banner();
        if ($banner -> deleteById($id) == true ) {
            $this->flashSession->success("Delete banner successfully!");
        } else {
            $this->flashSession->error("Can't delete banner");
        }
        return $this->response->redirect("/admin/managebanner/");
    }

    private function getValue(){
        $list_animtion = array("bounce", "shake", "swing", "tada","bounceInDown","bounceInLeft","bounceInRight","bounceInUp","fadeIn","flipInX","flipInY","lightSpeedIn","rotateIn","rotateInDownLeft","rotateInDownRight","slideInUp","slideInDown","slideInLeft","slideInRight","hinge","rollIn");
        $list_position = array("Top Left","Top Center" ,"Top Right","Middle Left","Middle Center","Middle Right","Bottom Left","Bottom Center","Bottom Right");
        $list_position_value = array("slide_style_left","slide_style_center" ,"slide_style_right","slide_style_left","slide_style_center","slide_style_right","slide_style_left","slide_style_center","slide_style_right");
        $this-> view-> animation = $list_animtion;
        $this-> view-> postion = $list_position;
        $this-> view-> postion_value = $list_position_value;
    }
}
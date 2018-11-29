<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\View;
use MyApp\Model\Partner;
use MyApp\Model\Categories;

class PartnerController extends ControllerBase
{
    public function indexAction() {
	    $partner = new Partner();
	    $this ->view -> partnerList = $partner -> findAll();
	    $this -> view -> pageTitle = "Đối Tác ";
        $this -> view -> titleForLayout = "Đối Tác  - ".DEFAULT_NAME;
        $this -> view -> saleKeyWords = "Đối Tác  - ".DEFAULT_NAME;
    }

}
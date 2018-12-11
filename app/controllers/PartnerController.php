<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\View;
use MyApp\Model\Partner;
use MyApp\Model\Categories;

class PartnerController extends ControllerBase
{
    public function indexAction() {
    	$text = $this -> tranlate->_('partner_page');
	    $partner = new Partner();
	    $this ->view -> partnerList = $partner -> findAll();
	    $this -> view -> pageTitle = $text;
        $this -> view -> titleForLayout = $text."  - ".DEFAULT_NAME;
        $this -> view -> saleKeyWords = $text."  - ".DEFAULT_NAME;
    }

}
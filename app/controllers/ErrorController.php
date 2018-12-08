<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\Controller;
use Phalcon\Mvc\View;


class ErrorController extends Controller
{
    public function indexAction() {
    	$this -> view -> titleForLayout = DEFAULT_NAME;
        $this -> view -> saleKeyWords = DEFAULT_NAME;
	    
    }

}
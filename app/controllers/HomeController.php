<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\View;
use MyApp\Model\Banner;
use MyApp\Model\Categories;
use Phalcon\Mvc\Dispatcher\Exception;

class HomeController extends ControllerBase
{
    public function indexAction() {
	    $categories = new Categories();
	    $this ->view -> categoryList = $categories -> findByLimit(4);
	    
    }
}


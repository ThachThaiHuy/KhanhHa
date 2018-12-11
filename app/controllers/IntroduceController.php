<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\View;
use MyApp\Model\Products;
use Phalcon\Paginator\Adapter\Model as PaginatorModel;

class IntroduceController extends ControllerBase
{
    public function indexAction() {
        $text = $this -> tranlate->_('introduct_us');
        $this -> view -> titleForLayout = $text." - ".DEFAULT_NAME;
        $this -> view -> saleKeyWords = $text." - ".DEFAULT_NAME;
        $this -> view -> pageTitle = $text;
    }
}


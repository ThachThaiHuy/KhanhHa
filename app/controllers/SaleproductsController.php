<?php
namespace MyApp\Controllers;
use Phalcon\Mvc\View;
use MyApp\Model\Products;
use Phalcon\Paginator\Adapter\Model as PaginatorModel;

class SaleproductsController extends ControllerBase
{
    public function indexAction() {
        $orderby = 'if(sale_price=0,price,sale_price) asc';
        $sortby = $this -> session -> get('sortby');
        if ($sortby == 1) {
            $orderby = 'if(sale_price=0,price,sale_price) asc';
        } elseif ($sortby == 2) {
            $orderby = 'if(sale_price=0,price,sale_price) desc';
        } else {
            $orderby = 'updated_at desc';
        }

        $products = new Products();

        if (empty($_GET['page'])) {
               $currentPage  = 1;
        } else {
               $currentPage  = (int) $_GET['page'];
        }

        $paginator = new PaginatorModel (
            array(
                "data"  => $products -> findBySale(GET_SALE_PRODUCT, $orderby),
                "limit" => ITEM_PER_PAGE,
                "page"  => $currentPage
            )
        );

        // Get the paginated results
        $page = $paginator -> getPaginate();
        $this -> view -> data = $page;
        $this -> view -> currentPage = $currentPage;
        $this -> view -> titleForLayout = "Sản phẩm giảm giá - ".DEFAULT_NAME;
        $this -> view -> saleKeyWords = "Sản phẩm giảm giá - ".DEFAULT_NAME;
        $this -> view -> pageTitle = "Sản phẩm giảm giá";
        return $this->view->pick('products/list');
    }
}


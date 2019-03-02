<?php

defined('APP_PATH') || define('APP_PATH', realpath('.'));

return new \Phalcon\Config(array(
    'database' => array(
        'adapter'     => 'Mysql',
        'host'        => 'localhost',
        'username'    => 'kha29561_chem',
        'password'    => 'ngannam776214',
        'dbname'      => 'kha29561_chem',
        'charset'     => 'utf8',
    ),
    'application' => array(
        'controllersDir' => APP_PATH . '/app/controllers/',
        'modelsDir'      => APP_PATH . '/app/models/',
        'migrationsDir'  => APP_PATH . '/app/migrations/',
        'viewsDir'       => APP_PATH . '/app/views/',
        'pluginsDir'     => APP_PATH . '/app/plugins/',
        'libraryDir'     => APP_PATH . '/app/library/',
        'cacheDir'       => APP_PATH . '/app/cache/',
        'baseUri'        => '/',
    ),
    'mail' => array(
        'driver'     => 'smtp',
        'host'       => 'host01.emailserver.vn',
        'port'       => 465,
        'encryption' => 'ssl',
        'username'   => 'info@khanhhatrading.com',
        'password'   => 'khanhhatrading88',
        'from'       => array(
            'email' => 'info@khanhhatrading.com',
            'name'  => 'KHANH HA CHEMICALS'
        )
    )
));

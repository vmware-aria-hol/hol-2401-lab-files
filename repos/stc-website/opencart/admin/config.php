<?php
// HTTP
define('HTTP_SERVER', 'http://127.0.0.1/admin/');
define('HTTP_CATALOG', 'http://127.0.0.1/');

// HTTPS
define('HTTPS_SERVER', 'http://127.0.0.1/admin/');
define('HTTPS_CATALOG', 'http://127.0.0.1/');

// DIR
define('DIR_APPLICATION', '/var/www/html/opencart/admin/');
define('DIR_SYSTEM', '/var/www/html/opencart/system/');
define('DIR_IMAGE', '/var/www/html/opencart/image/');
define('DIR_STORAGE', '/var/www/html/storage/');
define('DIR_CATALOG', '/var/www/html/opencart/catalog/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/template/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'opencart_user');
define('DB_PASSWORD', 'strong_password');
define('DB_DATABASE', 'opencartdb');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');

// OpenCart API
define('OPENCART_SERVER', 'https://www.opencart.com/');

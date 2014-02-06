<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2014-02-06 17:59:37 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 17:59:37 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 17:59:41 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 17:59:41 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 17:59:49 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 17:59:49 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:00:11 --- EMERGENCY: Database_Exception [ 1146 ]: Table 'dverf_main.custom' doesn't exist [ SHOW FULL COLUMNS FROM `custom` ] ~ MODPATH/database/classes/Kohana/Database/MySQL.php [ 194 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php:359
2014-02-06 18:00:11 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php(359): Kohana_Database_MySQL->query(1, 'SHOW FULL COLUM...', false)
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(1668): Kohana_Database_MySQL->list_columns('custom')
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(444): Kohana_ORM->list_columns()
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(389): Kohana_ORM->reload_columns()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(254): Kohana_ORM->_initialize()
#5 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(46): Kohana_ORM->__construct(NULL)
#6 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/Controller/Admin.php(308): Kohana_ORM::factory('Custom')
#7 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Controller.php(84): Controller_Admin->action_custom()
#8 [internal function]: Kohana_Controller->execute()
#9 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#10 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#11 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#12 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#13 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php:359
2014-02-06 18:00:11 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:00:11 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:00:20 --- EMERGENCY: Database_Exception [ 1146 ]: Table 'dverf_main.custom' doesn't exist [ SHOW FULL COLUMNS FROM `custom` ] ~ MODPATH/database/classes/Kohana/Database/MySQL.php [ 194 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php:359
2014-02-06 18:00:20 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php(359): Kohana_Database_MySQL->query(1, 'SHOW FULL COLUM...', false)
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(1668): Kohana_Database_MySQL->list_columns('custom')
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(444): Kohana_ORM->list_columns()
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(389): Kohana_ORM->reload_columns()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(254): Kohana_ORM->_initialize()
#5 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(46): Kohana_ORM->__construct(NULL)
#6 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/Controller/Admin.php(308): Kohana_ORM::factory('Custom')
#7 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Controller.php(84): Controller_Admin->action_custom()
#8 [internal function]: Kohana_Controller->execute()
#9 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#10 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#11 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#12 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#13 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php:359
2014-02-06 18:00:20 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:00:20 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:00:45 --- EMERGENCY: Database_Exception [ 1146 ]: Table 'dverf_main.custom' doesn't exist [ SHOW FULL COLUMNS FROM `custom` ] ~ MODPATH/database/classes/Kohana/Database/MySQL.php [ 194 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php:359
2014-02-06 18:00:45 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php(359): Kohana_Database_MySQL->query(1, 'SHOW FULL COLUM...', false)
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(1668): Kohana_Database_MySQL->list_columns('custom')
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(444): Kohana_ORM->list_columns()
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(389): Kohana_ORM->reload_columns()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(254): Kohana_ORM->_initialize()
#5 /home/intellectit/Документы/проекты/dverfurnitura.local/modules/orm/classes/Kohana/ORM.php(46): Kohana_ORM->__construct(NULL)
#6 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/Controller/Admin.php(308): Kohana_ORM::factory('Custom')
#7 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Controller.php(84): Controller_Admin->action_custom()
#8 [internal function]: Kohana_Controller->execute()
#9 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#10 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#11 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#12 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#13 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/modules/database/classes/Kohana/Database/MySQL.php:359
2014-02-06 18:00:45 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:00:45 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:10:00 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:10:00 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:10:05 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 18:10:05 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:01:39 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:01:39 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:48:33 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:48:33 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:37 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:37 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:37 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:37 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:41 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:41 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client/Internal.php(114): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#6 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#7 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:41 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 19:52:41 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 22:27:35 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 22:27:35 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 22:27:42 --- EMERGENCY: View_Exception [ 0 ]: The requested view admin/404 could not be found ~ SYSPATH/classes/Kohana/View.php [ 257 ] in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
2014-02-06 22:27:42 --- DEBUG: #0 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(137): Kohana_View->set_filename('admin/404')
#1 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php(30): Kohana_View->__construct('admin/404', NULL)
#2 /home/intellectit/Документы/проекты/dverfurnitura.local/application/classes/HTTP/Exception/404.php(15): Kohana_View::factory('admin/404')
#3 /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/Request.php(976): HTTP_Exception_404->get_response()
#4 /home/intellectit/Документы/проекты/dverfurnitura.local/index.php(112): Kohana_Request->execute()
#5 {main} in /home/intellectit/Документы/проекты/dverfurnitura.local/system/classes/Kohana/View.php:137
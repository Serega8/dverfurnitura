<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2013-12-10 15:55:17 --- EMERGENCY: Database_Exception [ 1146 ]: Table 'database_ib.custom' doesn't exist [ SHOW FULL COLUMNS FROM `custom` ] ~ MODPATH/database/classes/Kohana/Database/MySQL.php [ 194 ] in /var/www/admin/modules/database/classes/Kohana/Database/MySQL.php:359
2013-12-10 15:55:17 --- DEBUG: #0 /var/www/admin/modules/database/classes/Kohana/Database/MySQL.php(359): Kohana_Database_MySQL->query(1, 'SHOW FULL COLUM...', false)
#1 /var/www/admin/modules/orm/classes/Kohana/ORM.php(1668): Kohana_Database_MySQL->list_columns('custom')
#2 /var/www/admin/modules/orm/classes/Kohana/ORM.php(444): Kohana_ORM->list_columns()
#3 /var/www/admin/modules/orm/classes/Kohana/ORM.php(389): Kohana_ORM->reload_columns()
#4 /var/www/admin/modules/orm/classes/Kohana/ORM.php(254): Kohana_ORM->_initialize()
#5 /var/www/admin/modules/orm/classes/Kohana/ORM.php(46): Kohana_ORM->__construct(NULL)
#6 /var/www/admin/application/classes/Controller/Admin.php(281): Kohana_ORM::factory('Custom')
#7 /var/www/admin/system/classes/Kohana/Controller.php(84): Controller_Admin->action_custom()
#8 [internal function]: Kohana_Controller->execute()
#9 /var/www/admin/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#10 /var/www/admin/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#11 /var/www/admin/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#12 /var/www/admin/index.php(118): Kohana_Request->execute()
#13 {main} in /var/www/admin/modules/database/classes/Kohana/Database/MySQL.php:359
2013-12-10 15:57:35 --- EMERGENCY: Kohana_Exception [ 0 ]: The sort property does not exist in the Model_Custom class ~ MODPATH/orm/classes/Kohana/ORM.php [ 687 ] in /var/www/admin/modules/orm/classes/Kohana/ORM.php:603
2013-12-10 15:57:35 --- DEBUG: #0 /var/www/admin/modules/orm/classes/Kohana/ORM.php(603): Kohana_ORM->get('sort')
#1 /var/www/admin/application/classes/Model/Custom.php(26): Kohana_ORM->__get('sort')
#2 /var/www/admin/application/classes/Controller/Admin.php(281): Model_Custom->get_tree()
#3 /var/www/admin/system/classes/Kohana/Controller.php(84): Controller_Admin->action_custom()
#4 [internal function]: Kohana_Controller->execute()
#5 /var/www/admin/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#6 /var/www/admin/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#7 /var/www/admin/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#8 /var/www/admin/index.php(118): Kohana_Request->execute()
#9 {main} in /var/www/admin/modules/orm/classes/Kohana/ORM.php:603
2013-12-10 15:57:35 --- EMERGENCY: Kohana_Exception [ 0 ]: The sort property does not exist in the Model_Custom class ~ MODPATH/orm/classes/Kohana/ORM.php [ 687 ] in /var/www/admin/modules/orm/classes/Kohana/ORM.php:603
2013-12-10 15:57:35 --- DEBUG: #0 /var/www/admin/modules/orm/classes/Kohana/ORM.php(603): Kohana_ORM->get('sort')
#1 /var/www/admin/application/classes/Model/Custom.php(26): Kohana_ORM->__get('sort')
#2 /var/www/admin/application/classes/Controller/Admin.php(281): Model_Custom->get_tree()
#3 /var/www/admin/system/classes/Kohana/Controller.php(84): Controller_Admin->action_custom()
#4 [internal function]: Kohana_Controller->execute()
#5 /var/www/admin/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#6 /var/www/admin/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#7 /var/www/admin/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#8 /var/www/admin/index.php(118): Kohana_Request->execute()
#9 {main} in /var/www/admin/modules/orm/classes/Kohana/ORM.php:603
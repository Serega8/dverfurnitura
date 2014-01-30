<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2013-08-30 12:48:28 --- EMERGENCY: ErrorException [ 8 ]: Undefined variable: content ~ APPPATH/views/admin/template.php [ 120 ] in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/admin/template.php:120
2013-08-30 12:48:28 --- DEBUG: #0 /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/admin/template.php(120): Kohana_Core::error_handler(8, 'Undefined varia...', '/home/newtest/d...', 120, Array)
#1 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(61): include('/home/newtest/d...')
#2 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(348): Kohana_View::capture('/home/newtest/d...', Array)
#3 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#4 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller.php(87): Kohana_Controller_Template->after()
#5 [internal function]: Kohana_Controller->execute()
#6 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#7 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#8 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#9 /home/newtest/domains/newtest.by/public_html/baranovskiy/index.php(118): Kohana_Request->execute()
#10 {main} in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/admin/template.php:120
2013-08-30 12:48:32 --- EMERGENCY: ErrorException [ 8 ]: Undefined variable: content ~ APPPATH/views/admin/template.php [ 120 ] in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/admin/template.php:120
2013-08-30 12:48:32 --- DEBUG: #0 /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/admin/template.php(120): Kohana_Core::error_handler(8, 'Undefined varia...', '/home/newtest/d...', 120, Array)
#1 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(61): include('/home/newtest/d...')
#2 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(348): Kohana_View::capture('/home/newtest/d...', Array)
#3 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#4 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller.php(87): Kohana_Controller_Template->after()
#5 [internal function]: Kohana_Controller->execute()
#6 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#7 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#8 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#9 /home/newtest/domains/newtest.by/public_html/baranovskiy/index.php(118): Kohana_Request->execute()
#10 {main} in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/admin/template.php:120
2013-08-30 12:49:29 --- EMERGENCY: ErrorException [ 8 ]: Undefined variable: filename ~ APPPATH/classes/Controller/Admin.php [ 220 ] in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/classes/Controller/Admin.php:220
2013-08-30 12:49:29 --- DEBUG: #0 /home/newtest/domains/newtest.by/public_html/baranovskiy/application/classes/Controller/Admin.php(220): Kohana_Core::error_handler(8, 'Undefined varia...', '/home/newtest/d...', 220, Array)
#1 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller.php(84): Controller_Admin->action_brands()
#2 [internal function]: Kohana_Controller->execute()
#3 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin))
#4 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /home/newtest/domains/newtest.by/public_html/baranovskiy/index.php(118): Kohana_Request->execute()
#7 {main} in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/classes/Controller/Admin.php:220
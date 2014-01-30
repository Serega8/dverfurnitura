<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2013-08-26 01:25:32 --- EMERGENCY: ErrorException [ 8 ]: Undefined variable: i ~ APPPATH/views/template.php [ 108 ] in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/template.php:108
2013-08-26 01:25:32 --- DEBUG: #0 /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/template.php(108): Kohana_Core::error_handler(8, 'Undefined varia...', '/home/newtest/d...', 108, Array)
#1 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(61): include('/home/newtest/d...')
#2 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(348): Kohana_View::capture('/home/newtest/d...', Array)
#3 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#4 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller.php(87): Kohana_Controller_Template->after()
#5 [internal function]: Kohana_Controller->execute()
#6 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Client))
#7 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#8 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#9 /home/newtest/domains/newtest.by/public_html/baranovskiy/index.php(118): Kohana_Request->execute()
#10 {main} in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/template.php:108
2013-08-26 01:25:38 --- EMERGENCY: ErrorException [ 8 ]: Undefined variable: i ~ APPPATH/views/template.php [ 108 ] in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/template.php:108
2013-08-26 01:25:38 --- DEBUG: #0 /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/template.php(108): Kohana_Core::error_handler(8, 'Undefined varia...', '/home/newtest/d...', 108, Array)
#1 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(61): include('/home/newtest/d...')
#2 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/View.php(348): Kohana_View::capture('/home/newtest/d...', Array)
#3 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller/Template.php(44): Kohana_View->render()
#4 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller.php(87): Kohana_Controller_Template->after()
#5 [internal function]: Kohana_Controller->execute()
#6 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Client))
#7 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#8 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#9 /home/newtest/domains/newtest.by/public_html/baranovskiy/index.php(118): Kohana_Request->execute()
#10 {main} in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/views/template.php:108
2013-08-26 01:25:46 --- EMERGENCY: ErrorException [ 8 ]: Undefined variable: action_rus ~ APPPATH/classes/Controller/Client.php [ 57 ] in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/classes/Controller/Client.php:57
2013-08-26 01:25:46 --- DEBUG: #0 /home/newtest/domains/newtest.by/public_html/baranovskiy/application/classes/Controller/Client.php(57): Kohana_Core::error_handler(8, 'Undefined varia...', '/home/newtest/d...', 57, Array)
#1 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Controller.php(69): Controller_Client->before()
#2 [internal function]: Kohana_Controller->execute()
#3 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Client))
#4 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /home/newtest/domains/newtest.by/public_html/baranovskiy/system/classes/Kohana/Request.php(990): Kohana_Request_Client->execute(Object(Request))
#6 /home/newtest/domains/newtest.by/public_html/baranovskiy/index.php(118): Kohana_Request->execute()
#7 {main} in /home/newtest/domains/newtest.by/public_html/baranovskiy/application/classes/Controller/Client.php:57
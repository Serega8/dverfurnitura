<html>
    <head>
        <? foreach ($styles as $style): ?>
            <?= HTML::style($style); ?>
        <? endforeach; ?>
        <? foreach ($scripts as $script): ?>
            <?= HTML::script($script); ?>
        <? endforeach; ?>
        <style>
            button {
                padding:5px;
            }
            button:hover {
                cursor: pointer;
            }
            </style>
            <? if (!$auth) { ?>
            <link type="text/css" href="/content/css/style_admin.css" rel="stylesheet" />
            <? } ?>
    </head>
    <body>
        
            <? if (!$auth) { ?>
        <div id="container">
                <div id="box">
                    <div class="block" id="block-login">
                        <h2>Вход </h2>
                        <div class="content login">
                            <div class="flash">
                               <? if (isset($error)) {?><div class="message notice">
                                  <p><?=$error;?></p>
                                </div>
                               <? }?>
                            </div>
                            <form action="/admin/login" method="POST" class="form login">
                                <div class="group wat-cf">
                                    <div class="left">
                                        <label class="label right">Логин</label>
                                    </div>
                                    <div class="right">
                                        <input type="text" name="login" class="text_field" />
                                    </div>
                                </div>
                                <div class="group wat-cf">
                                    <div class="left">
                                        <label class="label right">Пароль</label>
                                    </div>
                                    <div class="right">
                                        <input type="password" name="password" class="text_field" />
                                    </div>
                                </div>
                                <div class="group navform wat-cf">
                                    <div class="right">
                                        <button class="button" name="submit"  type="submit">
                                            Вход
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <? } else { ?>
                <div id="header_wrapper">
            <div id="header">
                <div id="logo"> </div>
                <ul id="nav_content">
                    <li><a href="/admin/">ГЛАВНАЯ</a></li>
                    <li><a href="/admin/brands">БРЕНДЫ</a></li>
                    <li><a href="/admin/info">ИНФОРМАЦИЯ</a></li>
                    <li><a href="/admin/logout" style='background:rgba(34, 34, 34, 0.13);color:#f00;'>ВЫХОД</a></li>
                </ul>
                <div id="main_contacts">
                    <div id="left_m_c">
                        <p>+375 29 82 83 012</p>
                        <p>+375 29 82 83 012</p>
                    </div>
                    <div id="right_m_c">
                        <p>ТД "Ждановичи" <br/>
                            ул. Тимирязева</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper">
            <div id="main_content">
                <div id="navigation">
                    <h2>КАТАЛОГ ПРОДУКЦИИ</h2>
                    <ul class="acc" id="acc">
                        <?foreach ($main_menu as $k=>$main) { ?>
                        
                            <li <?if ($main['translit'] == $nav['level2']) {echo "class='curr_menu_m'"; $i=$k;} ?>>
                                <h3>
                                <a href="/admin/index/<?= $main['translit']; ?>"><?= $main['name']; ?></a></h3>
                                <div class="acc-section">
                                    <div class="acc-content">
                                        <ul>
                                        <? foreach ($sub_menu as $sub) { ?>
                                          <? if ($main['id'] == $sub['pid']) { ?>
                                            <li <? if ($sub['translit'] == $nav['level3']) echo 'class="curr_menu"';?>>
                                                <a href="/admin/index/<?= $main['translit']; ?>/<?= $sub['translit']; ?>"><?= $sub['name']; ?></a>
                                            </li>
                                          <? } ?>
                                        <? } ?>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        <? } ?>
                    </ul>
                    <div id="content">
                        <div id="content_contacts">
                            <p>Время работы: <span>10:00-19:00</span></p>
                            <p>Воскресенье: <span>12:00-17:00</span></p>
                        </div>
                        <div id="tringl"> </div>
                        
                        <div id="dynamic_content" style='margin-top: 50px;'>  
                            <?= $content; ?>
                        </div>
                    </div>
                </div>
                <div id="footer">
                    <div id="bg_red_line"></div>
                    <div id="footer_contacts">
                        <p>E-mail: ilya.baranovskiy@mail.ru<br/>
                            MTC +375-29-8283012<br/>
                            Velcom +375-29-8283012</p>
                        <p>Республика Беларусь, г. Минск<br/>
                            ТД "Ждановичи", ул. Тимирязева<br/>
                            Строительный рынок</p>
                    </div>
                </div>
            </div>
        </div>
    <script type="text/javascript">
        var parentAccordion = new TINY.accordion.slider("parentAccordion");
        parentAccordion.init("acc", "h3", true<? if (isset($i)) echo ','.$i;?>);
//            var nestedAccordion = new TINY.accordion.slider("nestedAccordion");
//            nestedAccordion.init("nested", "h3", true, 1, "acc-selected");

    </script>
            <? } ?>
        
    </body>
</html>
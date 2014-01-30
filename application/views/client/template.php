<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Magnefic Locks</title>
        <? foreach ($styles as $style) { ?>
            <?= HTML::style($style); ?>
        <? } ?>
        <? foreach ($scripts as $script) { ?>
            <?= HTML::script($script); ?>
        <? } ?>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <title><? if (!empty($seo)) echo $seo['t']; ?></title>
        <meta name="description" content="<? if (!empty($seo)) echo $seo['d']; ?>">
        <meta name="keywords" content="<? if (!empty($seo)) echo $seo['k']; ?>">
    </head>

    <body>
        <div id="header_wrapper">
            <div id="header">
                <div id="logo"> </div>
                <ul id="nav_content">
                    <li><a href="/">ГЛАВНАЯ</a></li>
                    <li><a href="/brands">БРЕНДЫ</a></li>
                    <li><a href="/articles">ИНФОРМАЦИЯ</a></li>
                    <li><a href="/contacts">КОНТАКТЫ</a></li>
                </ul>
                <div id="main_contacts">
                    <div id="left_m_c">
                        <p>+375-44-396 80 38</p>
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
                        <? foreach ($menu as $k => $main) { ?>
                            <li>
                                <h3>
                                    <a href="/catalog/<?= $main['translit_name']; ?>"><?= $main['name']; ?></a></h3>
                                <div class="acc-section">
                                    <div class="acc-content">
                                        <ul>
                                            <? foreach ($sub_menu as $sub) { ?>
                                                <? if ($main['id'] == $sub['pid']) { ?>
                                                    <li>
                                                        <a href="/catalog/<?= $main['translit_name']; ?>/<?= $sub['sub_translit']; ?>"><?= $sub['sub_name']; ?></a>
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

                        <div id="dynamic_content">  
                            <?= $content; ?>
                        </div>
                    </div>
                </div>
                <div id="footer">
                    <div id="bg_red_line"></div>
                    <div id="footer_contacts">
                        <p>E-mail: alexandrabolik@gmail.com<br/>
                            Velcom +375-44-396 80 38</p>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var parentAccordion = new TINY.accordion.slider("parentAccordion");
            parentAccordion.init("acc", "h3", true<? if (isset($i)) echo ',' . $i; ?>);
            //            var nestedAccordion = new TINY.accordion.slider("nestedAccordion");
            //            nestedAccordion.init("nested", "h3", true, 1, "acc-selected");

        </script>
    </body>
</html>

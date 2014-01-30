<div id="product_information">
    <div id="info">
        <div id="image_product_info">
            <div id="big_img">
                <img class="big_img" src="<?if (!empty($images)) echo $images[0]['url']; ?>" alt="" title=""/>
            </div>
            <div id="small_imgs"> 
                <? foreach($images as $image) {?>
                <img class="mini" src="<?=$image['url'];?>" alt="" title=""/> 
                <?}?>
            </div>
        </div>
        <div id="text_product_info">
            <div>
                <h2><?= $info['brand']; ?> / <?= $info['name']; ?></h2>
                <div>
                    <p>
                        <?= $info['descr']; ?>
                    </p> 
                    <div id="table_product_info">
                        <table>
                            <? if (!empty($info['mejosevoe_rasst'])) { ?>
                                <tr>
                                    <td><p>Межосевое расстояние</p></td>
                                    <td><p><?= $info['mejosevoe_rasst']; ?></p></td>
                                </tr>
                            <? } ?>
                            <? if (!empty($info['zapiranie_kluchom'])) { ?>
                                <tr>
                                    <td><p>Запирание</p></td>
                                    <td><p><?= $info['zapiranie_kluchom']; ?></p></td>
                                </tr>
                            <? } ?>
                            <? if (!empty($info['front_planka'])) { ?>
                                <tr>
                                    <td><p>Фронтальная планка</p></td>
                                    <td><p><?= $info['front_planka']; ?></p></td>
                                </tr>
                            <? } ?>
                            <? if (!empty($info['vhod'])) { ?>
                                <tr>
                                    <td><p>Вход</p></td>
                                    <td><p><?= $info['vhod']; ?></p></td>
                                </tr>
                            <? } ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
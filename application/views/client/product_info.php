



<div id="product_information">
    <div id="info">
        <div id="image_product_info">
            <div id="big_img">
                <img class="big_img" src="<? if (!empty($images)) echo $images[0]['img_url_small']; ?>" alt="" title=""/>
            </div>
            <div id="small_imgs"> 
                <? if (!empty($images)) { ?>
                    <? foreach ($images as $k => $i) { ?>

                        <img class="mini" src="<?= $i['img_url_small']; ?>" title="<?= $i['img_alt']; ?>" alt="<?= $i['img_alt']; ?>"/>


                    <? } ?>
                <? } ?>
            </div>
        </div>
        <div id="text_product_info">
            <div>
                <h2><?= $product['product_name']; ?></h2>
                <div>
                    <p>
                        <?= $product['s']; ?>
                    </p> 
                    <div id="table_product_info">
                        <table>
                            <? if (!empty($details)) { ?>

                                <? foreach ($details['details'] as $det) { ?>

                                    <? foreach ($details['sub'] as $sub) { ?>

                                        <? if ($sub['detail_id'] == $det['id']) { ?>

                                            <? foreach ($values as $val) { ?>
                                                <? if ($sub['id'] == $val['sub_detail_id'] && !empty($val['val'])) { ?>
                                                    <tr>
                                                        <td><p><?= $sub['key']; ?></p></td>
                                                        <td><p><?= $val['val']; ?></p></td>
                                                    </tr>
                                                <? } ?>
                                            <? } ?>
                                        <? } ?>
                                    <? } ?>
                                <? } ?>
                            <? } ?>


                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


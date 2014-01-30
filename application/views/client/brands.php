<!--<pre>-->
<? //print_r($brands); die;?>
<div id="all_brands">
    <? foreach ($brands as $brand) { ?>
        <div class="brand_one">
            <div>
                <a href="/brands/<?= $brand['translit']; ?>">
                    <img class="b-images" src='<?= $brand['img_url']; ?>' alt="<?= $brand['img_alt']; ?>" title="<?= $brand['img_title']; ?>">
                </a>
            </div>
            <div>
                <p><? echo ucfirst(strtolower($brand['img_alt'])); ?></p>
                <p><a href="/brands/<?= $brand['translit']; ?>">Подробнее...</a></p>
            </div>
            
        </div>
    <? } ?>
</div>
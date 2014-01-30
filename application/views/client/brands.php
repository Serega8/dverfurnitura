<div id="all_brands">
    <? foreach ($brands as $brand) { ?>
        <div class="brand_one">
            <div>
                <a href="/brands/<?= $brand['translit']; ?>">
                    <img class="b-images" src='<?= $brand['img_url']; ?>' alt="<?= $brand['img_alt']; ?>" title="<?= $brand['img_title']; ?>">
                </a>
            </div>
            <div>
                <p><? echo ucfirst(strtolower($brand['descr'])); ?></p>
            </div>
        </div>
    <? } ?>
</div>
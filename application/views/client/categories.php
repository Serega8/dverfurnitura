<div id="goods">
    <h3></h3>

    <? if (!empty($categories)) { ?>
        <? foreach ($categories as $category) { ?>
            <div class="goods_images">
                <p><?= $category['category_name']; ?></p>
                <a href="/catalog/<?= $category['translit_name']; ?>">
                    <img src="<?= $category['img_url']; ?>" alt="<?= $category['img_alt']; ?>" title="<?= $category['img_title']; ?>"/>
                </a>
            </div>
        <? } ?>
    <? } ?>

</div>


<div id="goods">

    <? foreach ($categories as $category) { ?>
        <?if ($category['translit_name'] == $level2){ ?>
            <img src="<?= $category['img_url']; ?>" alt="<?= $category['img_alt']; ?>" title="<?= $category['img_title']; ?>" class="main-photo" />
         <? } ?>
    <? } ?>
        <? if (!empty($subcategories)) { ?>
            <? foreach ($subcategories as $subcategory) { ?>

               <? if (!empty($subcategory['img_url'])) { ?>
                    <div class="goods_images">
                        <p><?= $subcategory['sub_name']; ?></p>
                        <a href="/catalog/<?= $level2 ?>/<?= $subcategory['sub_translit']; ?>">
                            <img src="<?= $subcategory['img_url']; ?>" alt="<?= $subcategory['img_alt']; ?>" title="<?= $subcategory['img_title']; ?>"/>
                        </a>
                    </div>
                <? } ?>

                <? if (empty($subcategory['img_url'])) { ?>
                    <div class="goods_images other">                   
                        <a href="/catalog/<?= $level2 ?>/<?= $subcategory['sub_translit']; ?>">
                             <p><?= $subcategory['sub_name']; ?></p>
                        </a>
                    </div>
                <? } ?>
            <? } ?>
        <? } ?>
       

</div>


<? if (!empty($products)) { ?>
    <div id="carusel">
        <? if (!empty($brands)) { ?>
            <? foreach ($brands as $k => $brand) { ?>
                <div class="list_wrapper">
                    <h2><?= $brand['name']; ?></h2>
                    <div class="prev_btn"><a id="<?= $brand['translit']; ?>_prev" class="prev" href="#"></a> </div>
                    <div class="list_carousel">
                        <ul id="<?= $brand['translit']; ?>">
                            <? if (!empty($products)) { ?>
                                <? foreach ($products as $product) { ?>
                                    <li> 
                                        <a href='/catalog/<?= $level2; ?>/<?= $level3; ?>/<?= $product['translit_name']; ?>'>
                                            <img class="img_product" src='<?= $product['img_url_small']; ?>'>
                                        </a>
                                        <p><?= $product['product_name']; ?></p>
                                    </li>


                                <? } ?>
                            <? } ?>


                        </ul>
                    </div>
                    <div class="next_btn"> <a id="<?= $brand['translit']; ?>_next" class="next" href="#"></a> </div>
                </div>
            <? } ?>
        <? } ?>
    </div>
    <script>

        $(document).ready(function() {
            $(function() {
    <? foreach ($brands as $k => $brand) { ?>
                    $('#<?= $brand['translit']; ?>').carouFredSel({
                        auto: false,
                        prev: '#<?= $brand['translit']; ?>_next',
                        next: '#<?= $brand['translit']; ?>_prev',
                        mousewheel: false,
                        swipe: {
                            onMouse: false,
                            onTouch: false
                        }
                    });
    <? } ?>
            });
        });
    </script>

<?
}?>
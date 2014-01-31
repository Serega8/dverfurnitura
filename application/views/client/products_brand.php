<!--вывод информации о бренде-->
<?=$brands['name'];?>
<br />
<img src="<?=$brands['img_url'];?>">
<?=$brands['descr'];?>
<!--вывод информации о бренде-->

<? if (!empty($products)) : ?>
    <? foreach ($categories as $k => $cat) { ?>
        <p class="category_name"><?//= $cat['name']; ?></p>
        <? foreach ($sub_categories as $ksub => $sub_cat) { ?>
            <? //$count = 0; ?>
            <? if ($sub_cat['pid'] == $cat['id']) { ?>
                <p class="sub_category_name"><?//= $sub_cat['name']; ?></p>
                <? foreach ($products as $kp => $product) { ?>
                    <? if ($sub_cat['id'] == $product['sub_category_id']) { ?>
                        <? //$count++; ?>
                        <div class='product_brand_<?= $sub_cat['id']; ?>' <?// if ($count > 4) echo 'style="display:none;"'; ?>>
                            <p><?= $product['product_name']; ?></p>

                            <a href='/catalog/<?= $cat['translit']; ?>/<?= $sub_cat['stranslit']; ?>/<?= $product['translit_name']; ?>'>
                                <img class="img_product" src='<?= $product['img_url_small']; ?>'>
                            </a>

                        </div>
                    <? } ?>
                <? } ?>
            <? } ?>
            <? //if ($count > 4) { ?>
                <!--<p class="show_all_sub" data-sub-id='<?//= $sub_cat['id']; ?>' status='hidden'>Показать все</p>-->
            <?// } ?> 
        <? } ?>
    <? } ?>
<? endif; ?>
<script>
    $(document).ready(function() {
        $('.show_all_sub').click(function() {
            var status = $(this).attr('status');
            var id = $(this).attr('data-sub-id');
            switch (status) {
                case 'hidden':
                    $(this).attr('status', 'display');
                    $(this).text('Скрыть все');
                    $('.' + id).show();
                    break;
                case 'display':
                    $('.' + id).each(function(k, v) {
                        if (k >= 4)
                            $(this).css('display', 'none');
                    });
                    $(this).attr('status', 'hidden');
                    $(this).text('Показать все');
                    break;
                default:
                    break;
            }


        });
    });
</script>
                
<?// echo $_SERVER['REQUEST_URI']; die; ?>
<!--<pre>-->
<?// print_r($products); die;?>

<div id="carusel">
    <? if (!empty($brands)) : ?>
        <? foreach ($brands as $k => $brand) { ?>
            <div class="list_wrapper">
                <h2><?= $brand['name']; ?></h2>

                <div class="prev_btn"><a id="<?= $brand['translit']; ?>_prev" class="prev" href="#"></a> </div>
                <div class="list_carousel">
                    <ul id="<?= $brand['translit']; ?>">

                        <? if (!empty($products)) : ?>

                            <? foreach ($products as $product) : ?>
                                <? if ($product['brand_id'] === $brand['id']): ?>
                        
<!--<pre>-->
<?// print_r($brands); die;?>
                  
                        
                                    <li> 
                                        <a href='/catalog/<?= $level2; ?>/<?= $level3; ?>/<?= $product['translit_name']; ?>'>
                                            <img class="img_product" src='<?= $product['img_url_small']; ?>'>
                                        </a>
                                        <p><?= $product['product_name']; ?></p>
                                    </li>
                                    
                                    
                         
                                    
                                    
                                    
                                <? endif; ?>

                            <? endforeach; ?>
                        <? endif; ?>

                    </ul>
                </div>
                <div class="next_btn"> <a id="<?= $brand['translit']; ?>_next" class="next" href="#"></a> </div>
            </div>
        <? } ?>
    <? endif; ?>
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

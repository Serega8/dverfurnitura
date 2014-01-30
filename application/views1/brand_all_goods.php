<div id="goods_brands_imgs">
<?php foreach ($all as $a) {?>
    <div class="gbi">
        <p><?=$a['brand_name'];?> / <?=$a['name'];?></p>
        <a href="/<?=$action;?>/<?=$level2;?>/<?=$level3;?>/<?=$level4;?>/<?=$a['translit'];?>"><img src='/mlocks<?=$a['img'];?>' alt=''/></a>
     
    </div>
<?php } ?>
</div>

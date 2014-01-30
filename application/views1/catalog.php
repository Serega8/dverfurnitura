<div id="goods">
   <h3><? if($action == 'brands') echo strtoupper($level2); ?></h3>
    <? foreach ($sub as $s) { ?>
        <div class="goods_images">
            <p><?= $s['name']; ?></p>
            <a href="/<?= $action; ?>/<?= $level2; ?>/<?= $s['translit']; ?>">
                <img alt="" src="/mlocks<?= $s['img']; ?>" title="" /> 
            </a>
        </div>
    <? } ?>
</div>
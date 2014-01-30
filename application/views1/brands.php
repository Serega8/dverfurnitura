<div id="all_brands">
    <?foreach ($brands as $brand) {?>
    <div class="brand_one">
        <div>
            <a href="/brands/<?=$brand['name'];?>">
                <img alt="" src="/mlocks<?=$brand['img'];?>"/>
            </a>
        </div>
        <div>
            <p><?echo ucfirst(strtolower($brand['descr']));?></p>
        </div>
    </div>
    <? } ?>
</div>
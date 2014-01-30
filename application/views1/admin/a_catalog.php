<div id="goods">
    
    
    
    <div style='float:right; width:790px; height:50px;'>
        <a style='float:right; margin:5px;' href="/admin/<?= $action; ?>/<?= $level2; ?>/add_subcategory">
            <button>
                Добавить подкатегорию
            </button>
        </a>
    </div>
    <? foreach ($sub as $s) { ?>
        <div class="goods_images">
            <p><?= $s['name']; ?> <a style="color:#fff;text-decoration: underline;" href="/admin/<?= $action; ?>/<?= $level2; ?>/<?= $s['translit']; ?>/edit">Изменить</a></p>
            <a href="/admin/<?= $action; ?>/<?= $level2; ?>/<?= $s['translit']; ?>">
                <img alt="" src="<?= $s['img']; ?>" title="" /> 
            </a>
        </div>
    <? } ?>
</div>
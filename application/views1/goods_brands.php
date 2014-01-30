<div id="carusel">
    <? foreach ($brands as $k => $brand) { ?>
        <? $name_brand = $k; ?>
        <div class="list_wrapper">
            <h2><?= $name_brand; ?></h2>
            <div class="prev_btn"><a id="<?= $k; ?>_prev" class="prev" href="#"></a> </div>
            <div class="list_carousel">
                <ul id="<?= $k; ?>">
                    <? foreach ($brand as $k => $v) { ?>
                        <li> 
                            <a href="/<?= $action; ?>/<?= $level2; ?>/<?= $level3; ?>/<?= $v['translit']; ?>">
                                <img alt="" src="/mlocks<?= $v['img']; ?>" title="" />
                            </a>
                            <p><?= $v['name']; ?></p>
                        </li>
                    <? } ?>
                </ul>
            </div>
            <div class="next_btn"> <a id="<?= $name_brand; ?>_next" class="next" href="#"></a> </div>
        </div>
    <? } ?>

</div>
<script>

    $(document).ready(function() {
        $(function() {
<? foreach ($brands as $k => $brand) { ?>
                $('#<?= $k; ?>').carouFredSel({
                    auto: false,
                    prev: '#<?= $k; ?>_next',
                    next: '#<?= $k; ?>_prev',
                    mousewheel: false,
                    swipe: {
                        onMouse: false,
                        onTouch: false
                    }
                });
<? } ?>
        })
    });
</script>
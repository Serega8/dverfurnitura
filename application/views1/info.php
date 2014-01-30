<div id="info">
    <? foreach ($infos as $info) { ?>
        <h2><?= $info['name']; ?></h2>
        <p>
            <?= $info['descr']; ?>
        </p>
        <div style="float:right;margin-top:-20px;"><p><?= $info['date']; ?></p></div>
        <hr/>
    <? } ?>
</div>

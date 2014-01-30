<div id="info">
    <a href="/admin/info/add" style="float:right;"><button>Добавить статью</button></a>
    <? foreach ($infos as $info) { ?>



        <? if ($info['id'] == $level3) { ?>
    <div style="width:780px;min-height:360px;">
        <?if (isset($notice)) echo $notice;?>
        <form method="POST" action="/admin/info/apply/">
        <textarea name="name"><?= $info['name']; ?></textarea>
            <input type="hidden" value="<?= $info['id']; ?>" name="id_info"/>
            <textarea name="descr" style="height:200px;"><?= $info['descr']; ?></textarea>
            <div style="float:right;margin-top: 202px;margin-right: 159px;">
                <button>Применить</button>
            </div>
            <p style="padding:10px;"><?= $info['date']; ?></p>
            <hr/>
    </form></div>
        <? } else { ?>
            <h2><?= $info['name']; ?></h2>
            <p>
                <?= $info['descr']; ?>
            </p>
            <div style="float:right;">
                <a href="/admin/info/edit/<?= $info['id']; ?>"><button>Изменить</button></a>
                <form method="POST" action ="/admin/info/delete/">
                    <input type="hidden" name="id" value="<?= $info['id']; ?>"/>
                <button>Удалить</button>
                </form>
            </div>
            <p><?= $info['date']; ?></p><br/>
            <hr/>
        <? } ?>

    <? } ?>
            
</div>
<style>
    textarea {
        resize:vertical;
        margin-left: 40px;
        width: 490px;
        min-height: 40px;
        margin-top: 33px;
    }
</style>

<div id="info">
    <? foreach ($articles as $article) { ?>
        <h2><a href='/articles/<?= $article['name_translit']; ?>' class='title'><?= $article['name']; ?></a></h2>
        <p>
            <?= Text::limit_chars(strip_tags($article['description']), '600', '...'); ?>
        </p>
        <div style="float:right;margin-top:-20px;"><p><?= date('Y-m-d H:i:s', $article['date']); ?></p></div>
        <hr/>


    <? } ?>   
</div>

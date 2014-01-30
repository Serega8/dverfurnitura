<script>
    $(document).ready(function() {

        $('select').change(function() {
            var info = $(this).attr('id');
            var infos = info.split('_');
            var id = infos[0];
            var status = infos[1];
            var msg, st;
            if (status == 1) {
                msg = 'активной';
                st = 'deactive';
            }
            else if (status == 0) {
                msg = 'неактивной';
                st = 'active';
            }

            if (confirm('Сделать ' + msg + '?')) {
                deactivate(id, st);
                
            }
        });
        
        $('.click_name').click(function() {
           var name = prompt('Сменить имя',$(this).text());
           console.log($(this));
        });
        
        
        function deactivate(id, st) {
            var data = new FormData();
            data.append('id', id);
            data.append('status', st);
            var request = new XMLHttpRequest();
            var url = "/admin/deactivateCAT";
            request.open("POST", url, true);


            request.onload = function(oEvent) {
                alert(request.response);
                window.location.href = window.location.href;
            }
            request.onerror = function(e) {
                alert(request.response);
                window.location.href = window.location.href;
            }
            request.send(data);
        }

    });

</script>
</script>


<div id="goods">
    <? foreach ($cat as $s) { ?>
        <div class="goods_images">
            <p>
                <span class="click_name"><?= $s['name']; ?></span>
                <select id="<?= $s['id']; ?>_<?= $s['status'] ?>">
                    <option value="active" >Активна</option>
                    <option value="deactive" <? if ($s['status'] == 1) echo "selected='selected'"; ?>>Неактивна</option>
                </select>
            </p>
            <a href="/admin/<?= $action; ?>/<?= $s['translit']; ?>">
                <img src="/content/images/goods_images/3-600.jpg" alt=""/>
            </a>
        </div>
    <? } ?>
</div>
<script>
    function initiate() {
        databox = document.getElementById('databox');
        btn_apply = document.getElementById('apply_btn');
        btn_apply.addEventListener('click', upload_f, false);
    }



    function upload_f(e) {
        var files = document.getElementById('files').files;
        if (files.length) {
            var list = '';
            for (var f = 0; f < files.length; f++) {
                var file = files[f];
                list += '<p> Файл: ' + file.name;
                list += '<span><progress value="0" max="100">0%</progress></span>';
                list += '</p>';
            }
            databox.innerHTML = list;
            var count = 0;
            var upload = function() {
                var file = files[count];
                var data = new FormData();
                var id = document.getElementById('id').value;
                data.append('file', file);
                data.append('id', id);
                if (count === 0) {
                    var main = 'main';
                    var brand = document.getElementById('brand_select').value;
                    var name = document.getElementById('name').value;
                    var id = document.getElementById('id').value;
                    var mejosevoe_rasst = document.getElementById('mejosevoe_rasst').value;
                    var descr = document.getElementById('descr').value;
                    var zapiranie_kluchom = document.getElementById('zapiranie_kluchom').value;
                    var vhod = document.getElementById('vhod').value;
                    var front_planka = document.getElementById('front_planka').value;
                    data.append('name', name);
                    data.append('id', id);
                    data.append('brand', brand);
                    data.append('main', main);
                    data.append('mejosevoe_rasst', mejosevoe_rasst);
                    data.append('zapiranie_kluchom', zapiranie_kluchom);
                    data.append('descr', descr);
                    data.append('vhod', vhod);
                    data.append('front_planka', front_planka);
                }
                var url = '/admin/update_product_all_info';
                var request = new XMLHttpRequest();
                var xmlupload = request.upload;
                xmlupload.addEventListener('progress', function(e) {
                    if (e.lengthComputable) {
                        var child = count + 1;
                        var per = parseInt(e.loaded / e.total * 100);
                        var progressbar = databox.querySelector(
                                "p:nth-child(" + child + ")>span>progress");
                        progressbar.value = per;
                        progressbar.innerHTML = per + '%';
                    }
                }, false)

                xmlupload.addEventListener('load', function() {
                    var child = count + 1;
                    var elem = databox.querySelector("p:nth-child(" + child + ")>span");
                    elem.innerHTML = ' ------- Загружен <br/>';
                    count++;
                    if (count < files.length) {
                        upload();
                    }
                }, false)
                request.open("POST", url, true);

                request.onload = function(oEvent) {
                    if (request.status == 200) {
                        console.log('ok');
                    }
                }
                request.onerror = function(e) {
                    alert(request.response);
                }
                request.send(data);
            }
            upload();
        }
        else {
            var data = new FormData();
            var id = document.getElementById('id').value;
            var brand = document.getElementById('brand_select').value;
            var name = document.getElementById('name').value;
            var mejosevoe_rasst = document.getElementById('mejosevoe_rasst').value;
            var descr = document.getElementById('descr').value;
            var zapiranie_kluchom = document.getElementById('zapiranie_kluchom').value;
            var vhod = document.getElementById('vhod').value;
            var front_planka = document.getElementById('front_planka').value;
            data.append('name', name);
            data.append('id', id);
            data.append('brand', brand);
            data.append('mejosevoe_rasst', mejosevoe_rasst);
            data.append('zapiranie_kluchom', zapiranie_kluchom);
            data.append('descr', descr);
            data.append('vhod', vhod);
            data.append('front_planka', front_planka);
            var req = new XMLHttpRequest();
            req.open("POST", "/admin/update_product_text", true);
            req.onload = function(oEvent) {
                alert(req.response);
            }
            req.onerror = function(e) {
                alert(req.response);
            }
            req.send(data);
        }

    }

    window.addEventListener('load', initiate, false);


    $(document).ready(function() {
        $('.mini').dblclick(function() {
            var id = $(this).attr('id');
            if (confirm('Удалить?')) {
                deleteimg(id);
                $(this).hide('easing');
            }
        });


        function deleteimg(id) {
            var data = new FormData();
            data.append('id', id);
            var request = new XMLHttpRequest();
            var url = "/admin/deleteIMG";
            request.open("POST", url, true);


            request.onload = function(oEvent) {
                console.log(request.response);
            }
            request.onerror = function(e) {
                alert(request.response);
            }
            request.send(data);
        }


    });


</script>

<div id="product_information">
    <div id="info">
        <div id="image_product_info">
            <div id="big_img">
                <img class="big_img" src="<? if (!empty($images)) echo $images[0]['url']; ?>" alt="" title=""/>
            </div>
            <div id="small_imgs"> 
                <? foreach ($images as $image) { ?>
                    <img class="mini" id="<?= $image['id']; ?>" src="<?= $image['url']; ?>" alt="" title=""/> 
                <? } ?>
            </div>
            <input style="margin-top: 117px;" type="file" multiple="multiple" id="files"/>
        </div>
        <div id="text_product_info">
            <div>
                <input type="text" id="name" value="<?= $info['name']; ?>"/>
                Бренд: <select id='brand_select'>
                    <? foreach ($brands as $brand) { ?>
                        <option value='<?= $brand['id']; ?>'><?= $brand['name'] ?></option>
                    <? } ?>
                </select>
                <div>
                    <p>
                        <textarea id="descr"><?= $info['descr']; ?></textarea>
                    </p> 
                    <div id="table_product_info">
                        <table>

                            <tr>
                                <td><p>Межосевое расстояние</p></td>
                                <td><p><input id="mejosevoe_rasst" type="text" value="<?= $info['mejosevoe_rasst']; ?>"/></p></td>
                            </tr>


                            <tr>
                                <td><p>Запирание</p></td>
                                <td><p><input id="zapiranie_kluchom" type="text" value="<?= $info['zapiranie_kluchom']; ?>"/></p></td>
                            </tr>


                            <tr>
                                <td><p>Фронтальная планка</p></td>
                                <td><p><input id="front_planka" type="text" value="<?= $info['front_planka']; ?>"/></p></td>
                            </tr>


                            <tr>
                                <td><p>Вход</p></td>
                                <td><p><input id="vhod" type="text" value="<?= $info['vhod']; ?>"/></p></td>
                            </tr>
                            <input type="hidden" id="id" value="<?= $info['id']; ?>"/>
                        </table>
                        <button id="apply_btn">Обновить</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <section id="databox" style="margin-right: 90px;">

    </section>
</div>
<style>
    textarea{
        margin-top:40px;
        width: 365px;
        height: 135px;
    }
    p {
        font-size:13px;
    }
    table p {
        height:36px;
    }
</style>
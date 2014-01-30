
<script>
    function initiate() {
        databox = document.getElementById('databox');

        var apply = document.getElementById('apply');
        apply.addEventListener('click', upload, false);

    }
    function upload() {
        var name = document.getElementById('name');
        var descr = document.getElementById('descr');
        var myfiles = document.getElementById('file');
         var status = document.getElementById('select_brand');
        var data = new FormData();
        var file = myfiles.files[0];
        data.append('file', file);
        data.append('status', status.value);
        data.append('descr', descr.value);
        data.append('name', name.value);
        var url = '/admin/brands/edit/<?= $id; ?>'
        var request = new XMLHttpRequest();
        var xmlupload = request.upload;
        xmlupload.addEventListener('loadstart', start, false);
        xmlupload.addEventListener('progress', status, false);
        xmlupload.addEventListener('load', show, false);
        request.open("POST", url, true);



        request.onload = function(oEvent) {
            alert(request.response);
            window.location.href = window.location.href;
        }
        request.onerror = function(e) {
            alert(request.response);
        }


        request.send(data);
    }
    function start() {
        databox.innerHTML = '<progress value ="0" max="100">0%</progress>';
    }
    function status(e) {
        if (e.lengthComputable) {
            var per = parseInt(e.loaded / e.total * 100);
            var progressbar = databox.querySelector('progress');
            progressbar.value = per;
            progressbar.innerHTML = per + '%';
        }
    }
    function show(e) {
        databox.innerHTML = '<span id="up_done" style="color:#f00"></span>';
    }
    window.addEventListener('load', initiate, false);
</script>



<div id="product_information">
<div class="brand_one" style='background: none;'>
    <div style='background: none;'>
        <img style='margin-top:8px;;' alt="" src="<?= $brand['img']; ?>"/>
        <input style="margin-left:50px;margin-top:10px;" type='text' value="<?= $brand['name']; ?>" placeholder='Название бренда' id='name'/>
        <select style="margin-left:50px;margin-top:10px;" id="select_brand">
            <option value="0" >Активен</option>
            <option value="1" <? if ($brand['status'] == 1) echo "selected='selected'"; ?>>Неактивен</option>
        </select>
    </div>
    <div style='background: none;'>
        <p> <textarea id='descr' placeholder='Описание'><?= $brand['descr']; ?></textarea></p>
    </div>
</div>

<div class="brand_one"  style='background: none;'>
    <div  style='background: none; margin-top:100px;margin-left: 50px;'>
        <input type='file' id='file' name='file'/>


    </div>
    <button style="margin-top:146px;float:right;" id="apply">Обновить данные</button>
</div>

<section id="databox" style="margin-right: 90px;">

</section>
</div>
<style>
    textarea {
        resize:vertical;
        width:470px;
        height: 93px;
    }
</style>
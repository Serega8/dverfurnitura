
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
        var data = new FormData();
        var file = myfiles.files[0];
        data.append('file', file);
        data.append('descr', descr.value);
        data.append('name', name.value);
        var url = '/admin/brands'
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


<div id="all_brands" >
    
    <?foreach ($brands as $brand) {?>
    <div class="brand_one">
        <div>
            <a href="/admin/brands/edit/<?=$brand['id'];?>">
                <img alt="" src="<?=$brand['img'];?>"/>
            </a>
        </div>
        <div>
            <p><?echo ucfirst(strtolower($brand['descr']));?></p>
        </div>
    </div>
    <? } ?>
    
    
    
    
    <div class="brand_one">
        <div  style='background: none; margin-top:100px;'>
            <input type='file' id='file' name='file'/>
            <input  style="margin-top:20px;" type='text' placeholder='Название бренда' id='name'/>
        </div>
        <div style='background: none;'>
            <p>
                <textarea id='descr' placeholder='Описание'></textarea>
            </p>
        </div>

    </div>
    <button style="margin-top:200px;float:right;margin-right:-100px;" id="apply">Добавить</button>
</div>

<section id="databox" style="margin-right: 90px;">

</section>
<style>
    textarea {
        margin-top:100px;
        width:470px;
        height: 150px;
    }
</style>
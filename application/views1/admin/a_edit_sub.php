
<script>
    function initiate() {
        databox = document.getElementById('databox');
     
        var hinput = document.getElementById('hinput');
        var apply = document.getElementById('apply');
        apply.addEventListener('click', upload, false);

    }
    function upload() {
        var name = document.getElementById('name');
    
        var myfiles = document.getElementById('cat_img');
        var h = hinput.value;
        var data = new FormData();
        var file = myfiles.files[0];
         if(file !== 'undefined') {
             data.append('file', file);
         }
        data.append('id', h);
        data.append('name', name.value);
        var url = '/admin/updateInfoSub'
        var request = new XMLHttpRequest();
        var xmlupload = request.upload;
        xmlupload.addEventListener('loadstart', start, false);
        xmlupload.addEventListener('progress', status, false);
        xmlupload.addEventListener('load', show, false);
        request.open("POST", url, true);
        
        
        
        request.onload = function(oEvent) {
                alert(request.response);
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
        databox.innerHTML = '<span id="up_done" style="color:#f00">Обновлено</span>';
//        window.location.href= '/admin/<?=$action;?>/<?=$level2;?>';
//        document.getElementById('cat_img').type = 'hidden';
//        setTimeout(function () {
//            window.location.href=window.location.href;
//        },3000);
    }
    window.addEventListener('load', initiate, false);
</script>


<div id="goods" style='background: none;'>
        <div class="goods_images" style="height:400px;">
            <p><input type="text" id="name" name="sub_cat_nam" value="<?=$info['name']; ?>"></p>
                <img style="margin-top:60px;"  src="<?= $info['img']; ?>" alt=""/>
                <input id="cat_img" style="margin-top:50px;" name="file" type="file"/>
                <input type="hidden" id="hinput" value="<?=$info['id'];?>"/>
        </div>
    <button style="margin-top:460px;" id="apply">применить</button>
    <section id="databox" style="margin-right: 90px;">
                        
                    </section>
</div>
<div id="main">
    <div id="ruchka_main">
        <a href="/catalog/ruchki">
            <img alt='' title='Ручки' id="img_ruchka" src='/content/img/dver_ruchka.png' />
        </a>
    </div>
    <div id="zamok_main">
        <a href="/catalog/zamki">
            <img alt='' title='Замки' id="img_zamok" src='/content/img/dver_zamok.png'/> 
        </a>
    </div>
</div>
<script>
                $(document).ready(function() {
                    $("#img_ruchka").effect("pulsate", {}, 7000);
                    setTimeout(function() {
                        $("#img_zamok").effect("pulsate", {}, 7000)
                    }, 1500);
                    setInterval(function() {
                        $("#img_ruchka").effect("pulsate", {}, 7000, function() {
                        })
                    }, 9000);
                    setInterval(function() {
                        $("#img_zamok").effect("pulsate", {}, 7000, function() {
                        })
                    }, 10500);
                })

</script>
<form method="POST" action="/admin/info/add">
        <textarea name="name" placeholder='Название статьи'></textarea>
            <input type="hidden" value="" name="id_info"/>
            <textarea name="descr" style="height:200px;" placeholder='Описание'></textarea>
            <div style="float:right;margin-top: 202px;margin-right: 159px;">
                <button>Добавить</button>
            </div>
            <p style="padding:10px;"></p>
            <hr/>
    </form><style>
    textarea {
        resize:vertical;
        margin-left: 40px;
        width: 490px;
        min-height: 40px;
        margin-top: 33px;
    }
</style>
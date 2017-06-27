<html lang="tr">
<head>
<#include "fragments/headers.ftl">
</head>

<body>
<#include "fragments/menu.ftl">

<div class="container">
    <div class="row" style="margin-top:150px;">


        <div class="col-md-12">
            <h1>Manga Listesi</h1>
            </hr>
            <a href="/admin/manga/new" class="btn btn-success pull-right" style="padding-left: 20px; padding-right: 20px;">Yeni Manga Ekle</a>
            <div class="table-responsive">
                <table id="mytable" class="table table-bordred table-striped">
                    <colgroup>
                        <col span="2" style="width: 20%;">
                        <col span="2" style="width: 20%;">
                        <col span="1" style="width: 10%;">
                        <col span="1" style="width: 10%;">
                        <col span="4" style="width: 40%;">
                    </colgroup>
                    <thead>
                    <th>Gerçek Adı</th>
                    <th>Görüntülenen Adı</th>
                    <th>Yazar</th>
                    <th>Beğeni Sayısı</th>
                    <th>Aksiyonlar</th>
                    </thead>
                    <tbody>
                    <#list mangaList as manga>
                    <tr>
                        <td>${manga.originalName!}</td>
                        <td>${manga.displayName!}</td>
                        <td>${manga.author!}</td>
                        <td>${manga.credit!}</td>
                        <td>
                            <p style="float:left;margin-right: 5px;" data-placement="top" data-toggle="tooltip" title="Yeni bölüm ekle"><button class="btn btn-success btn-xs btnaction" data-mangaid="${manga.id}" data-title="AddEpisode" data-toggle="modal" data-target="#addEpisode" ><span class="glyphicon glyphicon-plus"></span></button></p>
                            <p style="float:left;margin-right: 5px;" data-placement="top" data-toggle="tooltip" title="Bolumleri Goruntule"><a class="btn btn-info btn-xs btnaction" data-title="Edit" href="/admin/manga/episode/list/${manga.id}"><span class="glyphicon glyphicon-eye-open"></span></a></p>
                            <p style="float:left;margin-right: 5px;" data-placement="top" data-toggle="tooltip" title="Düzenle"><a class="btn btn-primary btn-xs btnaction" href="/admin/manga/new?id=${manga.id}" data-mangaid="'.$row['id'].'"  ><span class="glyphicon glyphicon-pencil"></span></a></p>
                        </td>
                    </tr>
                    </#list>


                    </tbody>

                </table>

                <div class="clearfix"></div>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="addEpisode" tabindex="-1" role="dialog" aria-labelledby="addEpisode" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading">Yeni bolum ekle!</h4>
            </div>
            <div class="modal-body">
                <form id="newEpisodeForm">

                    <input type="hidden" name="mangaId">
                    <div class="form-group">
                        <label>Bolum adi :</label>
                        <input class="form-control" name="episodeName" type="text" placeholder="Bolum adini giriniz">
                    </div>
                    <div class="form-group">
                        <label>Chapter : </label>
                        <input class="form-control" name="chapterIndex" type="text" placeholder="Kacinci bolum oldugunu giriniz">
                    </div>
                    <div class="form-group">
                        <label>Bolumun Cikis Tarihi :</label>
                        <input class="form-control" name="chapterDate" type="text" placeholder="GUN/AY/YIL (01/01/2010)">
                    </div>
                    <p style="color:red" class="errorP"></p>
                </form>

            </div>
            <div class="modal-footer ">
                <button type="button" id="addEpisodeBtn" class="btn btn-primary btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-plus"></span> Update</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
            </div>
            <div class="modal-body">

                <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>

            </div>
            <div class="modal-footer ">
                <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
        $(".btnaction").click(function(e){

            var mangaId = $(this).data("mangaid");
            console.log(mangaId);
            $('[name="mangaId"]').val(mangaId);
        });

        $("#addEpisodeBtn").click(function(e){
            var datastring = $("#newEpisodeForm").serialize();
            $.ajax({
                type: "POST",
                url: "/admin/manga/episode/new",
                data: datastring,
                dataType: "json",
                success: function(data) {
                    console.log(data["success"]);
                    if(data["success"]==0){
                        $(".errorP").text(data["error"]);
                    }else{
                        if(data["redirect_url"]!=""){
                            window.location=data["redirect_url"];
                        }

                    }
                    console.log(data);
                },
                error: function(error) {
                    console.log(error);
                    //alert('error handing here');
                }
            });
        });
    });
</script>
</body>

</html>

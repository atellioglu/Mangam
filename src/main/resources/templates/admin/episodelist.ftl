<html lang="tr">
<head>
<#include "fragments/headers.ftl">

</head>

<body>
<#include "fragments/menu.ftl">

<div class="container">
    <div class="row" style="margin-top:150px;">


        <div class="col-md-12">
            <h1>Bolum Listesi</h1>
            </hr>
            <a href="/admin/manga/new" class="btn btn-success pull-right" style="padding-left: 20px; padding-right: 20px;">Yeni Episode Ekle</a>
            <div class="table-responsive">
                <table id="mytable" class="table table-bordred table-striped">
                    <colgroup>
                        <col span="1" style="width: 25%;">
                        <col span="1" style="width: 25%;">
                        <col span="1" style="width: 50%;">
                        <col span="1" style="width: 50%;">
                    </colgroup>
                    <thead>
                    <th>Bolum Adi</th>
                    <th>Chapter</th>
                    <th>Tarih</th>
                    <th>Aksiyonlar</th>
                    </thead>
                    <tbody>
                    
                    <#list episodeList as episode>
                    <tr>

                        <td>${episode.name!"<span style='color:red'>Belirtilmedi !</span>"}</td>
                        <td>${episode.chapter!"<span style='color:red'>Belirtilmedi !</span>"}</td>
                        <td>${episode.date!"<span style='color:red'>Belirtilmedi !</span>"}</td>
                        <td>
                            <p style="float:left;margin-right: 5px;" data-placement="top" data-toggle="tooltip" title="Goruntule"><button class="btn btn-success btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-eye-open"></span></button></p>
                            <p style="float:left;margin-right: 5px;" data-placement="top" data-toggle="tooltip" title="Sil"><button class="btn btn-danger btn-xs" data-title="Edit" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-minus"></span></button></p>
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


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input class="form-control " type="text" placeholder="Mohsin">
                </div>
                <div class="form-group">

                    <input class="form-control " type="text" placeholder="Irshad">
                </div>
                <div class="form-group">
                    <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


                </div>
            </div>
            <div class="modal-footer ">
                <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading">Bolum sil ?</h4>
            </div>
            <div class="modal-body">

                <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Bu bolumu silmek istedigine emin misin ??</div>

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
    });
</script>
</body>

</html>

<html lang="tr">
<head>
<#include "fragments/headers.ftl">
    <script src="bootstrap-filestyle.js"></script>
</head>

<body>
<#include "fragments/menu.ftl">
<div class="container">
    <div class="row" style="margin-top:150px;">
    <h1>${manga.originalName!"Yeni Manga Ekleyin"}</h1>
    <hr>
    <form method="post" enctype="multipart/form-data" >
        <input type="hidden" name="id" value="${manga.id!}">
        <div class="form-group">
            <label for="orgName">Gerçek isim :</label>
            <input type="text" class="form-control" name="orgName" id="orgName" value="${manga.originalName!}" placeholder="Manga adini buraya giriniz">
        </div>
        <div class="form-group">
            <label for="orgName">Goruntulenme Ismi :</label>
            <input type="text" class="form-control" name="dispName" id="dispName" value="${manga.displayName!}" placeholder="Manga adini buraya giriniz">
        </div>


        <div class="form-group">
            <label for="credit">Yazar :</label>
            <input type="text" class="form-control"  id="author" name="author"  value="${manga.author!}" />
        </div>



        <div class="form-group">
            <input type="file" name="kapakimg" class="filestyle" data-buttonText="Kapak Resmi">
        </div>
        <div class="form-group">
            <input type="file" name="kareimg" class="filestyle" data-buttonText="Kare Resim">
        </div>
        <div class="form-group">
            <input type="file" name="dikdortgenimg" class="filestyle" data-buttonText="Dikdortgen Resim(220x110)">
        </div>

        <div class="form-group">
            <label for="credit">Begeni Sayisi :</label>
            <input type="text" class="form-control"  disabled="disabled" id="credit" name="credit"  value="${manga.credit!}" />
        </div>
        <div class="form-group">
            <label for="datepicker" class="datepicker">Ilk bolum tarihi</label>
            <input type="text" class="form-control" name="date"  id="datepicker" placeholder="ilk bolumu giriniz" value="${manga.firstEpisodeDate!}" />
        </div>


        <div class="form-group">
            <div class="checkbox">
                <#if manga.featured! == true>
                    <label><input type="checkbox" name="featured" value="1" checked="checked">Featured?</label>
                <#else>
                    <label><input type="checkbox" name="featured" value="1" >Featured?</label>
                </#if>

            </div>
        </div>

        <div class="form-group">
            <label for="state">Durum :</label>
            <select class="form-control" name="state" id="state">
                <#if manga.state??>
                    <option value="${manga.state}">${manga.state}</option>
                <#else>
                    <option value="0">Lutfen state seciniz</option>
                </#if>
                <option value="OnGoing">OnGoing</option>
                <option value="Completed">Completed</option>
                <option value="One Shot">One Shot</option>
            </select>
        </div>
        <div class="form-group">
            <label>Aciklama : </label>
            <textarea name="description" class="form-group">${manga.description!}</textarea>
        </div>
        <div class="form-group">
            <label>Kategoriler : </label><br/>
        <#list mangaGenres as genre>
            <label class="checkbox-inline"><input type="checkbox" name="genres" checked="checked" id="${genre.id}" value="${genre.id}">${genre.name}</label>
        </#list>
        <#list genres as genre>
            <label class="checkbox-inline"><input type="checkbox" name="genres" id="${genre.id}" value="${genre.id}">${genre.name}</label>
        </#list>
        </div>
        <div class="form-group">
        <#if manga.id == 0>
            <button type="submit" class="btn btn-success pull-right">KAYDET</button>
        <#else>
            <button type="submit" class="btn btn-success pull-right">GUNCELLE</button>
        </#if>
        </div>
        <div style="height:100px;"></div>
    </form>
    </div>
</div>
<script>
    $( function() {
        $( "#datepicker" ).datepicker({
            dateFormat : "dd/mm/yy",
        });
    } );
</script>
</body>

</html>

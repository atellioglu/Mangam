<!DOCTYPE html>
<html id="home" lang="en">
<head>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=940" />
    <title>${manga.originalName}</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css"/>
<#include "fragments/headers.ftl">

<style>
    .btn-rounded {
        width: 80px;
        height: 30px;
        text-align: center;
        padding: 6px;
        font-size: 12px;
        line-height: 1.428571429;
        border-radius: 5px;
        margin-top: 5px;
        margin-right: 10px;

        font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;
    }
</style>
</head>
<body>

<!-- Container Start -->
<div class="container_16">

    <!-- Top Back -->
    <div id="top"></div>
    <div id="top-back-two"></div>

    <!-- Logo -->
    <div class="grid_3 logo">
        <img src="/image/theme/logo.png" alt=""/>
    </div>

<#include "fragments/topmenu.ftl">
    <!-- Mini Button -->
<#include "fragments/minibuttonstop.ftl">
    <div style="height:300px"></div>

    <!-- Emty Grid -->
    <div class="grid_5">
    </div>

    <div class="grid_16 blog-page">
        <h1>${manga.originalName}</h1>
        <h2 class="blog-page-space">${manga.displayName}</h2>

        <!-- # Post-->
        <div id="post-blog-list-read" class="post-blog-read">
            <!-- Image -->
            <img src="image/post/single-post.png" style="margin-bottom:2px; width: 98%;" alt="">
            <!-- Text -->
            <h3>Özet</h3>
            <p>${manga.description!}</p>
            <h3>ÖZELLİKLER</h3>
            <div style="clear:both"></div>
            <p>
                Durum : ${manga.state}<br>
                Yazar : ${manga.author}<br>
                Genre : <#list genreList as genre>
                <a href="#">${genre.name}</a>,
            </#list><br>
                Puan : ${manga.score}<br>
                Çıkış Tarihi : ${manga.firstEpisodeDate!}<br>
                <button type="button" id="likeBtn" class="btn btn-danger btn-rounded"><i class="glyphicon glyphicon-heart"></i>&nbsp;Beğen</button>
                <button type="button" id="followBtn" class="btn btn-success btn-rounded"><i class="glyphicon glyphicon-plus"></i>&nbsp;Takip Et</button>

            </p>

            <h3>BÖLÜMLER</h3>

            <div id="episodes" style="overflow-y: scroll; height:200px;">
            <ul class="grid_12" id="episodes">
              <#list episodeList as episode>
                <li><span class="tab-date">${episode.date}</span><a href="#" class="tab-menu-link">${manga.originalName!}${episode.chapter} :: ${episode.name}</a></li>

              </#list>
            </ul>
            </div>
            <div style="clear:both"></div>
        </div>

        <!-- Comment-->
        <input type="hidden" id="commentPageIndex" value="0">
        <div id="blog-comment">
            <h1>Yorumlar</h1>
            <div id="commentArea">
            </div>
            <a id="loadMore" href="#">Daha fazla yorum yükle</a><br>
            <!-- #2-->

            <!-- Leave Comment-->
            <a href="#write-comment" title="Write Your Comment!" class="code middle-button" style="margin:28px 0px 0px 4px;"><span class="middle-right"></span>Comment</a>
            <div style="display: none;">
                <div id="write-comment" class="popup-comment">
                    <h1 style="margin-left:16px; padding-top:16px;">Leave Comments</h1>
                    <form action="#">
                        <fieldset><input name="Name" type="text" value="Name:" onfocus="if(this.value=='Name:')this.value='';" onblur=	"if(this.value=='')this.value='Name:';"/></fieldset>
                        <fieldset><input name="Mail" type="text" value="E-Mail:" onfocus="if(this.value=='E-Mail:')this.value='';" onblur=	"if(this.value=='')this.value='E-Mail:';"/></fieldset>
                        <fieldset><input name="Web" type="text" value="Web:" onfocus="if(this.value=='Web:')this.value='';" onblur=	"if(this.value=='')this.value='Web:';"/></fieldset>
                        <fieldset><textarea name="Message" onfocus="if(this.value=='Message:')this.value='';" onblur=	"if(this.value=='')this.value='Message:';">Message:</textarea></fieldset>
                        <fieldset><input type="submit" value="Send" /></fieldset>
                    </form>
                </div>
            </div>

        </div>


    </div>

</div>

<!-- Footer Back-->
<#include "fragments/footer.ftl">
<script>
    function loadComment(){
        $.ajax({
            url:"/api"
        });
    }

    $("#allpage-login-top").pageSlide({ width: "350px", direction: "left" });
    $("#allpage-signup-top").pageSlide({ width: "350px", direction: "right" });
    $("#allpage-search-top").pageSlide({ width: "350px", direction: "left", modal: true });
    $("#homepage-login-button").pageSlide({ width: "350px", direction: "left" });
    $("#homepage-signup-button").pageSlide({ width: "350px", direction: "right" });
</script>
</body>
</html>
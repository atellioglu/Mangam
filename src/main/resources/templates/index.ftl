<!DOCTYPE html> 
<html id="home" lang="en"> 
<head> 
<meta charset=utf-8 />
<meta name="viewport" content="width=940" />
<title>Site Adi</title>
<#include "fragments/headers.ftl">
</head>
<body>
<!-- Container Start -->
<div class="container_16">
  
  <!-- Top Back -->
  <div id="top"></div>
  <div id="top-back"></div>
  
  <!-- Logo -->
  <div class="grid_3 logo">
    <img src="image/theme/logo.png" alt=""/>
  </div>

<#include "fragments/topmenu.ftl">
    <!-- Mini Button -->
<#include "fragments/minibuttonstop.ftl">
    <div style="height:300px"></div>
  
  <!-- Emty Grid -->
  <div class="grid_5">
  </div>

  
  <!-- Slide Show-->
  <div class="grid_16">
  <div id="slider-ribbon"></div>
  <div id="slider">
    <div id="slide-backs"></div>
    <div id="slides">
      <div class="slides_container">
        <a href="#"><img src="image/post/slide-1.jpg" width="919" height="326" alt=""  /></a>
        <a href="#"><img src="image/post/slide-2.jpg" width="919" height="326" alt=""  /></a>
        <a href="#"><img src="image/post/slide-3.png" width="919" height="326" alt=""  /></a>
        <a href="#"><img src="image/post/slide-4.png" width="919" height="326" alt=""  /></a>
      </div>
    </div>
    </div>
  </div>
    <div class="grid_12 hotnews-homepage"><!--sizin icin onerdiklerimizi asagiya al -->
        <h1>SİZİN İÇİN ÖNERDİKLERİMİZ</h1>
    </div>
  
</div>

<!-- Dot-->
<div class="dot"></div>

<!-- Top4 Start-->
<div class="container_16">
    <#list featuredList as manga>
        <a href="/manga/${manga.originalName}">
        <div class="grid_4 mini-advert">
            <div id="image-hover"><img src="upload/images/onepiece.jpg" alt="" width="220" height="110" /></div>
            <img src="image/post/blank.png" alt="" />
            <h1>${manga.displayName}</h1>
            <p class="mangaDesc">${manga.description!"DESCRIPTION GIRIRLMEMIS asfdsafasf asfdsafa sf sadf dsafsasafas fdsa afsdafdsa sa fsa fd fsad sfad fdafdsdfasfdasfasfdasf"}</p>
        </div>
        </a>
    </#list>
</div>

<!-- Dot-->
<div class="dot" style="margin-top:26px;"></div>

<!-- Latest Elements and New Videos Start-->
<div class="container_16">

  <!-- Tab Menu Start -->
  <div style="margin-left:1px; margin-top:-10px;" class="grid_8 latest-elements">
    <h1>Son Eklenen Bölümler</h1>
    <p></p>

    <!-- Tab Title -->
    <div class='tabbed_content'>
      <!-- Tab Content -->
      <div class='slide_content'>
      <div class='tabslider'>
        <ul class="tab-menu-list">
            <#list episodeList as episode>
                <li><span class="tab-date">${episode.date}</span><a href="#" class="tab-menu-link">${episode.name}</a></li>
            </#list>

        </ul>

      </div>
      </div>
      <!-- Content Finish -->
    </div>
    <!-- Tab Finish -->
  </div>
  <!-- Grid End -->
  
  <!-- New Video Start -->
  <div style="margin-left:9px; margin-top:-10px;" class="grid_8 latest-elements">
      <h1>Son Eklenen Mangalar</h1>
      <p></p>
      <!-- Tab Title -->
      <div class='tabbed_content'>
          <!-- Tab Content -->
          <div class='slide_content'>
              <div class='tabslider'>
                  <ul class="tab-menu-list">
                      <#list mangaList as manga>
                          <li><span class="tab-date">${manga.state!"OnGoing"}</span><a href="#" class="tab-menu-link">${manga.originalName}</a></li>
                      </#list>
                  </ul>

              </div>
          </div>
          <!-- Content Finish -->
      </div>
  </div>
  <!-- End -->
</div>

<!-- Dot-->
<div class="dot" style="margin-top:26px;"></div>

<!-- Poster Back-->
<div id="random-poster-back"></div>
<div class="container_16">
  
  <!-- Random Poster Start-->
  <div id="random-poster" class="grid_16">
    <h1>Rastgele Mangalar</h1>
    <ul id="mycarousel" class="jcarousel-skin-tango">
      <li><a rel="picture-album" href="image/post/demo.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-1.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo-2.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-2.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo-3.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-3.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-4.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo-2.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-5.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo-3.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-6.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-7.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo-2.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-8.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo-3.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-9.png" width="147" height="147" alt="" /></a></li>
      <li><a rel="picture-album" href="image/post/demo.jpg" title="Lorem ipsum dolor sit amet"><img src="image/post/mini-slide-10.png" width="147" height="147" alt="" /></a></li>
    </ul>
  </div>
  <!-- Random Poster End-->
  
  <!-- New Users-->
  <div id="new-users" class="grid_8">
    <h1>Yeni Kullanıcılar</h1>
    <p></p>
    <ul id="userList">
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user2.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user3.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user4.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user5.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user6.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user7.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user8.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user9.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user10.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user11.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user12.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user13.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user14.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user15.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user16.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user17.png" alt="" /></a></li>
      <li><a href="#" title="User Name is Here"><span class="user-mask"></span><img src="image/post/user18.png" alt="" /></a></li>
    </ul>
  </div>
  
  <!-- New Comments-->
  <div id="new-comments" class="grid_8">
    <h1>Son Yorumlar</h1>
    <p></p>
    <ul>
    <li><span style="font-weight:bold"><a href="#">iamilkay</a> says:</span> Lorem Ipsum is simply dummy text of the printing and type setting dummy text of printing industry.</li>
    <li><span style="font-weight:bold"><a href="#">iamilkay</a> says:</span> Lorem Ipsum is simply dummy text of the printing and type setting dummy text of printing industry.</li>
    <li><span style="font-weight:bold"><a href="#">iamilkay</a> says:</span> Lorem Ipsum is simply dummy text of the printing and type setting dummy text of printing industry.</li>
    <li><span style="font-weight:bold"><a href="#">iamilkay</a> says:</span> Lorem Ipsum is simply dummy text of the printing and type setting dummy text of printing industry.</li>
    </ul>
  </div>
</div>

<!-- Footer Back-->

<#include "fragments/footer.ftl">

<script>
    $(document).ready(function(){
        $.each($(".mangaDesc"),function(){
            var text = $(this).text();
            var truncatedText = text.substring(0,Math.min(250,text.length));
            truncatedText += "..";
            $(this).text(truncatedText);
        });
        $.ajax({
            type: "GET",
            url: "/api/user/userList",
            success: function(data) {
                console.log(data);
            },
            error: function() {
            }
        });
    });
$("#allpage-login-top").pageSlide({ width: "350px", direction: "left" });
$("#allpage-signup-top").pageSlide({ width: "350px", direction: "right" });
$("#allpage-search-top").pageSlide({ width: "350px", direction: "left", modal: true });
$("#homepage-login-button").pageSlide({ width: "350px", direction: "left" });
$("#homepage-signup-button").pageSlide({ width: "350px", direction: "right" });
</script>
</body> 
</html>
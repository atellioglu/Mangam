<!DOCTYPE html> 
<html id="home" lang="en"> 
<head> 
<meta charset=utf-8 />
<meta name="viewport" content="width=940" />
<title>Türler</title>
<#include "fragments/headers.ftl">
</head>
<body>

<!-- Container Start -->
<div class="container_16">
  
  <!-- Top Back -->
  <div id="top"></div>
  <div id="top-back-two"></div>
  
  <!-- Logo -->
  <div class="grid_3 logo">
    <img src="image/theme/logo.png" alt=""/>
  </div>
  <#include "fragments/topmenu.ftl">
    <!-- Mini Button -->
  <#include "fragments/minibuttonstop.ftl">
  
  <!-- Big Message -->
  <div class="grid_11 top-message" >

  </div>
  
  <!-- Emty Grid -->
  <div class="grid_5">
  </div>
  
  <div class="grid_16 blog-page">
    <h1>Türler</h1>
    <h2 class="blog-page-space">Okumak istediğiniz manganın türünü seçiniz.</h2>
  </div>
  
  <div class="grid_16 list-page">
  

    <div style="clear:both"></div>
    
    <div id="listing">
    
    <!-- #1 -->
        <#list genres as genre>
            <div class=" music-playlist">
                <a href="genre/${genre.name}" class="textnodec">
                <img src=${(genre.smallIcon)!} alt="" class="music-playlist-left"  />
                <h1>${genre.name}</h1>
                <p>
                    <#if genre.smallText??>
                        '${genre.smallText}'
                    <#else>
                        '${genre.name}'
                    </#if>

                </p>

            </div>

        </#list>
    
    </div>
    
    <div style="clear:both"></div>
    <!-- Page Navi -->

  </div>
</div>

<!-- Footer Back-->
<#include "fragments/footer.ftl">

<script> 
$("#allpage-login-top").pageSlide({ width: "350px", direction: "left" });
$("#allpage-signup-top").pageSlide({ width: "350px", direction: "right" });
$("#allpage-search-top").pageSlide({ width: "350px", direction: "left", modal: true });
$("#homepage-login-button").pageSlide({ width: "350px", direction: "left" });
$("#homepage-signup-button").pageSlide({ width: "350px", direction: "right" });
</script>
</body>
</html>
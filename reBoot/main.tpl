<!DOCTYPE html>
<html lang="ru">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="{THEME}/images/favicon.ico" type="image/x-icon" />
{headers}
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{THEME}/css/all.min.css?v=21.0.1">
<link rel="stylesheet" type="text/css" href="{THEME}/css/bootstrap-icons.css?v=21.0.1">
<link rel="stylesheet" type="text/css" href="{THEME}/css/tiny-slider.css?v=21.0.1">
<link id="style-switch" rel="stylesheet" type="text/css" href="{THEME}/css/style.css?v=21.0.1">
<link rel="stylesheet" href="{THEME}/css/engine.css?v=21.0.1">
<link rel="stylesheet" href="{THEME}/css/compat21.css?v=21.0.4">
<script src="{THEME}/js/theme.js?v=21.0.1"></script>
</head>

<body>

{include file="modules/header.tpl"}
    
<main id="main-content">

<section class="py-2">
<div class="container">
<div class="row g-0">
<div class="col-12 bg-primary-soft p-2 rounded">
<div class="d-sm-flex align-items-center text-center text-sm-start">
<div class="me-3"><span class="badge bg-primary p-2 px-3">Интересное:</span></div>
<div class="tiny-slider arrow-end arrow-xs arrow-white arrow-round arrow-md-none">
<div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="0" data-arrow="true" data-dots="false" data-items="1">
{custom template="modules/custom1" available="global" from="0" limit="5" order="date"}
</div></div>
</div></div></div></div>
</section>
    
[available=main]

<section class="pt-4 pb-0 card-grid">
<div class="container">
<div class="row g-4">
<div class="col-lg-6">
{custom template="modules/custom2" available="global" from="0" limit="1" order="date"}
</div>
<div class="col-lg-6">
<div class="row g-4">
{custom template="modules/custom3" available="global" from="1" limit="3" order="date"}
</div></div>
</div></div>
</section>

<section class="pt-4 pb-3">
<div class="container"><div class="row"><div class="col-md-12">
<div class="mb-4 d-md-flex justify-content-between align-items-center">
<h2 class="m-0"><i class="bi bi-megaphone"></i> Сейчас читают</h2>
<a href="{THEME}/../../index.php?do=lastnews" class="text-body small"><u>Все статьи</u></a>
</div>
<div class="tiny-slider arrow-hover arrow-blur arrow-dark arrow-round">
<div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="24" data-arrow="true" data-dots="false" data-items-xl="4" data-items-md="3" data-items-sm="2" data-items-xs="1">
{custom template="modules/carousel" available="global" from="0" limit="6" order="date"}
</div></div></div></div></div>
</section>
    
[/available]
    
<section class="position-relative [available=main]pt-3[/available]">
<div class="container" data-sticky-container>
<div class="row">

<div class="col-lg-9">
 
[available=main]
<div class="mb-4"><h2 class="m-0"><i class="bi bi-hourglass-top me-2"></i>Новые статьи</h2><p>Последние новости, фотографии, видео и специальные репортажи</p></div>
[/available]
    
[available=lastcomments]<div class="pb-2 mb-4 border-bottom"><h1 class="fs-2">Последние комментарии</h1></div>[/available]
[available=newposts]<div class="pb-2 mb-4 border-bottom"><h1 class="fs-2">Непрочитанное</h1></div>[/available]
[available=favorites]<div class="pb-2 mb-4 border-bottom"><h1 class="fs-2">Мои закладки</h1></div>[/available]
[available=tags]<div class="pb-2 mb-4 border-bottom"><h1 class="fs-2">Статьи по тэгу: {cloudstag}</h1></div>[/available]
{info}<div id="dle-content">{content}</div>
</div>

{include file="modules/sidebar.tpl"}

</div></div>
</section>

{include file="modules/partners.tpl"}
</main>
    
{include file="modules/footer.tpl"}

<button class="back-top" type="button" aria-label="Наверх"><i class="bi bi-arrow-up-short"></i></button>

{jsfiles}
{AJAX}
<script src="{THEME}/js/bootstrap.bundle.min.js?v=21.0.1"></script>
<script src="{THEME}/js/tiny-slider.js?v=21.0.1"></script>

<script src="{THEME}/js/functions.js?v=21.0.1"></script>
{login}
    
</body>
</html>
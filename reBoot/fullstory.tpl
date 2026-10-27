<div class="article-hero bg-dark-overlay-4 rounded-3" style="background-image:url([xfgiven_poster][xfvalue_image_url_poster][/xfgiven_poster][xfnotgiven_poster]{image-1}[/xfnotgiven_poster]); background-position: center left; background-size: cover;">
<div class="container">
<div class="row">
<div class="col-lg-12 py-md-4 my-lg-4">
<a href="{category-url}" class="badge bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>{category}</a>
<h1 class="text-white">{title}</h1>
<ul class="nav nav-divider text-white-force align-items-center">
<li class="nav-item">
<div class="nav-link">
<div class="d-flex align-items-center text-white position-relative">

<span>Автор: <a href="{THEME}/../../index.php?subaction=userinfo&amp;user={login}" class="stretched-link text-reset btn-link">{login}</a></span>
</div></div>
</li>
<li class="nav-item">{date}</li>
<li class="nav-item">[add-favorites]<i class="far fa-star me-1"></i> В закладки[/add-favorites][del-favorites]<i class="far fa-star me-1"></i> Из закладок[/del-favorites]</li>
<li class="nav-item"><i class="far fa-eye me-1"></i> {views}</li>
[rating-type-2]<li class="nav-item">[rating-plus]<i class="fas fa-heart me-1 text-danger"></i>[/rating-plus] {likes}</li>[/rating-type-2]
</ul>
<div class="d-md-flex align-items-center mt-4">
<h5 class="text-white me-3 pt-2">Поделиться: </h5>
<button type="button" class="btn btn-sm btn-light mb-0" data-share>Поделиться ссылкой</button><span class="share-status small ms-2" role="status"></span>
</div>
</div></div></div></div>

<div class="article-body mt-4">{full-story}</div>

<div class="d-md-flex justify-content-between text-center text-md-start my-4">
<div class="full_tags mb-0"><i class="bi bi-tags"></i>{tags}</div>
<ul class="nav nav-divider align-items-center justify-content-center justify-content-md-end">
<li class="nav-item"><a href="#comlink" class="btn-link"><i class="far fa-comment-alt me-1"></i> {comments-num}</a></li>
<li class="nav-item"><i class="far fa-eye me-1"></i> {views}</li>
[rating-type-2]<li class="nav-item">[rating-plus]<i class="fas fa-heart me-1 text-danger"></i>[/rating-plus] {likes}</li>[/rating-type-2]
</ul>
</div>

<div class="mt-5" id="comlink">
<h3 class="mb-2">Комментарии</h3>
{comments}
{navigation}
</div>

[comments]{addcomments}[/comments]

<style>
.full_tags a {margin-right: 0.5rem;display: inline-block;background: transparent;border: 1px solid #d0d4d9;color: #595d69;letter-spacing: 0.5px;position: relative;overflow: hidden;outline: 0;white-space: nowrap;margin-bottom: 6px;padding: 0.4rem 0.8rem;font-size: 0.8125rem;font-weight: 500;line-height: 1.5;text-align: center;vertical-align: middle;cursor: pointer;border-radius: 0.2rem;}
.full_tags a:hover {background: #d0d4d9;border-color: #d0d4d9;color: #191a1f;}
.full_tags i {margin-right:1rem;font-size:18px}
    
</style>
[not-group=5]
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" >
<div class="modal-content">
<div class="modal-header"><h5 class="modal-title" id="exampleModalLabel">Личный кабинет</h5><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
<div class="modal-body">
<center><div class="avatarlogin"><a href="{profile-link}"><img src="{foto}" alt="img"></a></div></center>
<div class="row g-2">
[admin-link]<div class="col-md-12"><a href="{admin-link}" class="btn btn-primary-soft w-100"><i class="bi bi-gear"></i> Админпанель</a></div>[/admin-link]
<div class="col-md-6"><a href="{addnews-link}" class="btn btn-primary-soft w-100">Добавить пост</a></div>
<div class="col-md-6"><a href="{profile-link}" class="btn btn-primary-soft w-100">Мой профиль</a></div>
<div class="col-md-6"><a href="{pm-link}" class="btn btn-primary-soft w-100">Сообщения</a></div>
<div class="col-md-6"><a href="{favorites-link}" class="btn btn-primary-soft w-100">Избранное</a></div>
<div class="col-md-6"><a href="{newposts-link}" class="btn btn-primary-soft w-100">Новое</a></div>
<div class="col-md-6"><a href="{THEME}/../../index.php?do=lastcomments" class="btn btn-primary-soft w-100">Комментарии</a></div>
<div class="col-md-12"><a href="{logout-link}" class="btn btn-primary-soft w-100 mb-0">Выйти</a></div>
</div>
</div>
</div></div></div>
[/not-group]

[group=5]
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header"><h5 class="modal-title" id="exampleModalLabel">Авторизация</h5><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
<div class="modal-body p-4">
<form method="post">
<div class="mb-3">
<label class="form-label" for="login_name">Логин</label>
<input type="text" class="form-control" name="login_name" autocomplete="username" required id="login_name" placeholder="Логин">
</div>
<div class="mb-3">
<label class="form-label" for="login_password">Пароль</label>
<input type="password" class="form-control" name="login_password" autocomplete="current-password" required id="login_password" placeholder="*********">
</div>
<div class="mb-3 form-check">
<input type="checkbox" class="form-check-input" id="exampleCheck1" name="login_not_save" value="1">
<label class="form-check-label" for="exampleCheck1">Чужой компьютер</label>
</div>
<div class="row align-items-center">
<div class="col-sm-4"><button type="submit" class="btn btn-success">Авторизация</button></div>
<div class="col-sm-8 text-sm-end"><span>Все еще нет аккаунта? <a href="{registration-link}"><u>Создать</u></a></span></div>
</div>
<hr>
<div class="text-center">
<a href="{lostpassword-link}">Забыли пароль?</a>
<ul class="list-unstyled d-sm-flex mt-3 justify-content-center">
[facebook]<li class="mx-2 w-50"><a href="{facebook_url}" class="btn bg-facebook d-inline-block"><i class="fab fa-facebook-f me-2"></i> через Facebook</a></li>[/facebook]
[google]<li class="mx-2 w-50"><a href="{google_url}" class="btn bg-google d-inline-block"><i class="fab fa-google me-2"></i> через Google</a></li>[/google]
</ul>
</div>
<input name="login" type="hidden" id="login" value="submit">
</form>
</div>
</div></div></div>
[/group]
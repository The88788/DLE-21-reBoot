<div class="pb-2 mb-4 border-bottom"><h1 class="fs-2">Пользователь - {usertitle}</h1></div>

<div class="row mb-5">

<div class="col-md-4 mb-3">
<div class="border rounded-3 bg-light">
<div class="card-body">
<div class="d-flex flex-column align-items-center text-center">
<img src="{foto}" alt="{foto}" class="rounded-circle w-50">
<div class="mt-3">
<h5>{usertitle}</h5>
<p class="text-secondary fs-13 mb-1">{status}</p>
<p class="font-size-sm">{land}[not-land]Место жительства[/not-land]</p>
<button class="btn btn-primary w-100" onclick="DLESendPM('{usertitle}'); return false;" href="{THEME}/../../index.php?do=pm&amp;doaction=newpm&amp;username={usertitle}">Написать</button>
[not-logged]<a class="btn btn-outline-primary w-100" href="#editlink">Изменить профиль</a>[/not-logged]
</div></div></div>

</div>
</div>
    
<div class="col-md-8">
<div class="card mb-3">
<ul class="list-group mt-0 pt-0">
<li class="list-group-item fs-13 py-3"><h6 class="mb-0 d-inline-block w-50">Полное имя</h6>{fullname}[not-fullname]Не указано[/not-fullname]</li>
<li class="list-group-item fs-13 py-3"><h6 class="mb-0 d-inline-block w-50">Email</h6>{editmail}</li>
<li class="list-group-item fs-13 py-3"><h6 class="mb-0 d-inline-block w-50">Регистрация</h6>{registration}</li>
<li class="list-group-item fs-13 py-3"><h6 class="mb-0 d-inline-block w-50">Последняя активность</h6>{lastdate}</li>
<li class="list-group-item fs-13 py-3"><h6 class="mb-0 d-inline-block w-50">Статус</h6>[online]<span class="text-success">Онлайн</span>[/online][offline]<span class="text-success">Оффлайн</span>[/offline]</li>
</ul>
</div>
<div class="card mb-3">
<ul class="list-group mt-0 pt-0">
<li class="list-group-item fs-13 py-3"><h6 class="mb-0 d-inline-block w-50">Кол-во публикаций</h6>{news-num} ({news})</li>
<li class="list-group-item fs-13 py-3"><h6 class="mb-0 d-inline-block w-50">Кол-во комментариев</h6>{comm-num} ({comments})</li>
<li class="list-group-item fs-13 py-3">{commentsrate}</li>
</ul>
</div>
<div class="border rounded-3 p-3" style="border-color:rgba(0,0,0,.125)!important">
<h5>О себе</h5>
<p class="mb-0">{info}</p>
</div>
</div>
    
</div>
    
[not-logged]

<div class="pb-2 mb-4 border-bottom"><h1 class="fs-4">Изменить информацию</h1></div>
    
<div class="bg-primary-soft rounded p-4 mb-4 p-sm-5" id="editlink">
    
<div class="form-group">
<label for="fullname">Ваше имя</label>
<input type="text" name="fullname" id="fullname" value="{fullname}" class="wide">
</div>

<div class="form-group">
<label for="email">Ваш e-mail</label>
<input type="email" name="email" id="email" value="{editmail}" class="wide" required>
</div>

<div class="form-group">
<label for="land">Место проживания</label>
<input type="text" name="land" id="land" value="{land}" class="wide">
</div>

<div class="form-group">
<label>Часовой пояс</label>
{timezones}
</div>

<div class="form-group">
<label for="altpass">Старый пароль</label>
<input type="password" name="altpass" id="altpass" class="wide">
</div>

<div class="form-group">
<label for="password1">Новый пароль</label>
<input type="password" name="password1" id="password1" class="wide">
</div>

<div class="form-group">
<label for="password2">Повторите новый пароль</label>
<input type="password" name="password2" id="password2" class="wide">
</div>

<div class="form-group">
<label for="image">Загрузите аватар</label>
<input type="file" name="image" id="image" class="pt-2">
</div>
							
<div class="form-group">
<label for="info">О себе</label>
<textarea name="info" id="info" rows="8" class="wide">{editinfo}</textarea>
</div>

<div class="form-group">
<label for="signature">Подпись</label>
<textarea name="signature" id="signature" rows="8" class="wide">{editsignature}</textarea>
</div>

[group=1,2,3]
<div class="form-group">
<label for="allowed_ip">Блокировка по IP</label>
<textarea placeholder="Примеры: 192.48.25.71 or 129.42.*.*" name="allowed_ip" id="allowed_ip" rows="8" class="field wide">{allowed-ip}</textarea>
</div>
[/group]

<div class="form-group">
<table class="xfields">{xfields}</table>
</div>

<div class="form-group fs-12">
<div class="admin_checkboxs">{twofactor-auth}</div>
<div class="admin_checkboxs">{news-subscribe}</div>
<div class="admin_checkboxs">{comments-reply-subscribe}</div>
<div class="admin_checkboxs">{unsubscribe}</div>
</div>
						
<button class="btn btn-primary" name="submit" type="submit">Сохранить изменения</button>
<input name="submit" type="hidden" id="submit" value="submit">

</div>
    
[/not-logged]
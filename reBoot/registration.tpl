<div class="auth-form">
	<h1 class="auth-form__title">
		[registration]Регистрация[/registration]
		[validation]Продолжение регистрации[/validation]
	</h1>
	<p class="auth-form__lead">
		[registration]Учётная запись открывает доступ к комментариям, закладкам, личным сообщениям и добавлению публикаций. Если при регистрации возникнут сложности, напишите <a href="{THEME}/../../index.php?do=feedback">администратору</a>.[/registration]
		[validation]Аккаунт уже создан, но данные о вас неполные. Заполните дополнительные поля профиля, чтобы завершить регистрацию.[/validation]
	</p>

	[registration]
	<div class="form-row">
		<label class="form-label" for="name">Логин<span class="form-req" title="Обязательное поле">*</span></label>
		<div class="form-inline">
			<input class="form-input" type="text" name="name" id="name" autocomplete="username" required>
			<button class="soft-button" type="button" onclick="CheckLogin(); return false;">Проверить</button>
		</div>
	</div>
	<div class="form-grid">
		<div class="form-row">
			<label class="form-label" for="password1">Пароль<span class="form-req" title="Обязательное поле">*</span></label>
			<input class="form-input" type="password" name="password1" id="password1" autocomplete="new-password" required>
		</div>
		<div class="form-row">
			<label class="form-label" for="password2">Повторите пароль<span class="form-req" title="Обязательное поле">*</span></label>
			<input class="form-input" type="password" name="password2" id="password2" autocomplete="new-password" required>
		</div>
	</div>
	<div class="form-row">
		<label class="form-label" for="email">Электронная почта<span class="form-req" title="Обязательное поле">*</span></label>
		<input class="form-input" type="email" name="email" id="email" autocomplete="email" required>
	</div>
	[question]
	<div class="form-row">
		<label class="form-label" for="question_answer">{question}</label>
		<input class="form-input" type="text" name="question_answer" id="question_answer" placeholder="Введите ответ" required>
	</div>
	[/question]
	[sec_code]
	<div class="form-row">
		<label class="form-label" for="sec_code">Код с картинки</label>
		<div class="c-captcha">
			{reg_code}
			<input type="text" name="sec_code" id="sec_code" title="Повторите Код" placeholder="Повторите Код" required>
		</div>
	</div>
	[/sec_code]
	[recaptcha]
	<div class="form-row">{recaptcha}</div>
	[/recaptcha]
	[/registration]

	[validation]
	<div class="form-row">
		<label class="form-label" for="fullname">Ваше имя</label>
		<input class="form-input" type="text" name="fullname" id="fullname" autocomplete="name">
	</div>
	<div class="form-row">
		<label class="form-label" for="land">Место жительства</label>
		<input class="form-input" type="text" name="land" id="land">
	</div>
	<div class="form-row">
		<label class="form-label" for="info">О себе</label>
		<textarea class="form-input" name="info" id="info" rows="5"></textarea>
	</div>
	<div class="form-row">
		<label class="form-label" for="image">Аватар</label>
		<input class="form-input form-input--file" type="file" name="image" id="image">
	</div>
	<div class="form-row user_fields">{xfields}</div>
	[/validation]

	<div class="form-actions">
		<button class="primary-button" type="submit">Отправить</button>
		<span class="form-actions__hint">Регистрируясь, вы принимаете <a href="{THEME}/../../index.php?do=rules">правила сайта</a>.</span>
	</div>
</div>

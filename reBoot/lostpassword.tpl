<div class="auth-form">
	<h1 class="auth-form__title">Восстановление пароля</h1>
	<p class="auth-form__lead">Укажите логин или электронную почту, и мы отправим письмо со ссылкой для смены пароля.</p>

	<div class="form-row">
		<label class="form-label" for="lostname">Логин или электронная почта<span class="form-req" title="Обязательное поле">*</span></label>
		<input class="form-input" type="text" name="lostname" id="lostname" autocomplete="username" required>
	</div>
	[sec_code]
	<div class="form-row">
		<label class="form-label" for="sec_code">Код с картинки</label>
		<div class="c-captcha">
			{code}
			<input type="text" name="sec_code" id="sec_code" title="Повторите Код" placeholder="Повторите Код" required>
		</div>
	</div>
	[/sec_code]
	[recaptcha]
	<div class="form-row">{recaptcha}</div>
	[/recaptcha]

	<div class="form-actions">
		<button class="primary-button" type="submit" name="submit">Восстановить пароль</button>
		<span class="form-actions__hint">Вспомнили пароль? <a href="{THEME}/../../">Вернуться на сайт</a></span>
	</div>
</div>

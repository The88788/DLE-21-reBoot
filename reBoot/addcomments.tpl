<div class="reply-form" id="addcomment">
	<h3 class="reply-form__title">Оставить комментарий</h3>
	[not-logged]
	<p class="reply-form__note">Вы на сайте как гость. Укажите имя и почту или <a href="{THEME}/../../index.php?do=register">зарегистрируйтесь</a>.</p>
	<div class="form-grid">
		<div class="form-row">
			<label class="form-label" for="name">Ваше имя</label>
			<input class="form-input" type="text" name="name" id="name" value="{guest-name}" maxlength="35" autocomplete="nickname" required>
		</div>
		<div class="form-row">
			<label class="form-label" for="mail">Электронная почта</label>
			<input class="form-input" type="email" name="mail" id="mail" value="{guest-mail}" maxlength="60" autocomplete="email">
		</div>
	</div>
	[/not-logged]

	<div class="form-row" id="comment-editor">
		<label class="form-label" for="comments">Текст комментария</label>
		{editor}
	</div>

	[image-upload]
	<div class="form-row comments-image-uploader-area">
		<a class="comments-image-uploader-toggle" onclick="ShowCommentsUploader(this); return false;" href="#hidden-image-uploader" aria-controls="hidden-image-uploader" aria-expanded="false">Прикрепить изображения</a>
		<div id="hidden-image-uploader" style="display: none">{image-upload}</div>
	</div>
	[/image-upload]

	[allow-comments-subscribe]
	<div class="form-row form-row--check">{comments-subscribe}</div>
	[/allow-comments-subscribe]

	[recaptcha]
	<div class="form-row">{recaptcha}</div>
	[/recaptcha]

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
			{sec_code}
			<input type="text" name="sec_code" id="sec_code" title="Повторите Код" placeholder="Повторите Код" required>
		</div>
	</div>
	[/sec_code]

	<div class="form-actions">
		<button class="primary-button" type="submit" name="submit" title="Отправить комментарий">Отправить комментарий</button>
		<span class="form-actions__hint">Комментарии публикуются по правилам сайта. <a href="{THEME}/../../index.php?do=rules">Правила</a></span>
	</div>
</div>

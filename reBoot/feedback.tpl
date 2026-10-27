<section class="panel">
	<div class="section-heading">
		<div>
			<h1>Обратная связь</h1>
			<p>Напишите редакции — мы отвечаем на письма по очереди поступления</p>
		</div>
	</div>

	<div class="form-body">
		[not-logged]
		<div class="form-grid">
			<div class="form-row">
				<label class="form-label" for="name">Ваше имя<span class="form-req" title="Обязательное поле">*</span></label>
				<input class="form-input" type="text" maxlength="35" name="name" id="name" autocomplete="name" required>
			</div>
			<div class="form-row">
				<label class="form-label" for="email">Электронная почта<span class="form-req" title="Обязательное поле">*</span></label>
				<input class="form-input" type="email" maxlength="35" name="email" id="email" autocomplete="email" required>
			</div>
		</div>
		[/not-logged]
		<div class="form-row">
			<label class="form-label" for="subject">Тема сообщения<span class="form-req" title="Обязательное поле">*</span></label>
			<input class="form-input" type="text" maxlength="45" name="subject" id="subject" required>
		</div>
		<div class="form-row">
			<label class="form-label" for="recipient">Получатель</label>
			{recipient}
		</div>
		<div class="form-row">
			<label class="form-label" for="message">Сообщение<span class="form-req" title="Обязательное поле">*</span></label>
			<textarea class="form-input" name="message" id="message" rows="8" required></textarea>
		</div>
		[attachments]
		<div class="form-row">
			<label class="form-label" for="feedback_files">Прикрепить файлы</label>
			<input class="form-input form-input--file" name="attachments[]" id="feedback_files" type="file" multiple>
		</div>
		[/attachments]
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
				{code}
				<input type="text" name="sec_code" id="sec_code" title="Повторите Код" placeholder="Повторите Код" required>
			</div>
		</div>
		[/sec_code]

		<div class="form-actions">
			<button class="primary-button" type="submit" name="send_btn">Отправить сообщение</button>
		</div>
	</div>
</section>

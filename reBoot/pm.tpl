<section class="panel">
	<div class="section-heading">
		<div>
			<h1>Личные сообщения</h1>
			<p>Диалоги, отправка и лимит вашего почтового ящика</p>
		</div>
		<nav class="pm-menu" id="pm-menu" aria-label="Разделы личных сообщений">
			[inbox]<span class="soft-button">Список диалогов</span>[/inbox]
			[new_pm]<span class="primary-button">Новое сообщение</span>[/new_pm]
		</nav>
	</div>

	<div class="pm-status">
		<div class="pm-status__bar">{pm-progress-bar}</div>
		<span class="pm-status__text">Заполнено {proc-pm-limit}% из {pm-limit} сообщений</span>
	</div>

	[pmlist]
	<div class="pmlist">
		{pmlist}
	</div>
	[/pmlist]

	[newpm]
	<div class="form-body">
		<div class="form-grid">
			<div class="form-row">
				<label class="form-label" for="pm_to">Имя получателя<span class="form-req" title="Обязательное поле">*</span></label>
				<input class="form-input" type="text" name="name" id="pm_to" value="{author}" required>
			</div>
			<div class="form-row">
				<label class="form-label" for="pm_topic">Тема сообщения<span class="form-req" title="Обязательное поле">*</span></label>
				<input class="form-input" type="text" name="subj" id="pm_topic" value="{subj}" required>
			</div>
		</div>
		<div class="form-row" id="comment-editor">
			<label class="form-label" for="comments">Текст сообщения</label>
			{editor}
		</div>
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
			<button class="primary-button" type="submit" name="add">Отправить</button>
			<button class="soft-button" type="button" onclick="dlePMPreview()">Предпросмотр</button>
		</div>
	</div>
	[/newpm]
</section>

[readpm]
<section class="panel pm-dialog">
	<div class="section-heading">
		<div>
			<h2>{subj}</h2>
			[not-self-dialog]<p>Переписка с пользователем {user-dialog}</p>[/not-self-dialog]
		</div>
	</div>

	<div class="thread">
	[messages]
	<article class="thread__item[pm-author] thread__item--own[/pm-author]" id="{id}">
		<div class="thread__top">
			<span class="thread__avatar">
				<img class="avatar" src="{foto}" alt="" width="52" height="52" loading="lazy">
				[online]<span class="thread__online" title="{login} — на сайте"><span class="sr-only">{login} — на сайте</span></span>[/online]
			</span>
			<div class="thread__ident">
				<div class="thread__who">{author}</div>
				<div class="thread__when"><time>{date}</time><span class="thread__group">{group-name}</span></div>
			</div>
		</div>
		<div class="thread__text text">{text}</div>
		[signature]<div class="thread__signature">{signature}</div>[/signature]
		<div class="thread__actions">
			[reply]<span class="thread__btn" title="Цитировать">Цитата</span>[/reply]
			[pm-edit]<span class="thread__btn" title="Редактировать"><span class="sr-only">Редактировать</span></span>[/pm-edit]
			[ignore]<span class="thread__btn" title="Игнорировать">Игнорировать</span>[/ignore]
			[complaint]<span class="thread__btn" title="Пожаловаться"><span class="sr-only">Пожаловаться</span></span>[/complaint]
			[del]<span class="thread__btn thread__btn--danger" title="Удалить"><span class="sr-only">Удалить</span></span>[/del]
		</div>
	</article>
	[/messages]
	</div>

	<div class="reply-form">
		<h3 class="reply-form__title">Ответить на сообщение</h3>
		{editor}
		<div class="form-actions">
			<button class="primary-button" type="submit" name="submit" title="Ответить">Ответить</button>
		</div>
	</div>
</section>
[/readpm]

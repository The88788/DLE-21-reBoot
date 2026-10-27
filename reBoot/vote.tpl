<h5>{title}</h5>

[votelist]
<form method="post" name="vote">
[/votelist]

<div class="vote_list my-3">{list}</div>

[voteresult]
<div class="vote_votes grey">Проголосовало: {votes}</div>
[/voteresult]

[votelist]
<input type="hidden" name="vote_action" value="vote">
<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
<button class="btn btn-primary rounded w-100 mb-2" type="button" onclick="doVote('vote'); return false;">Голосовать</button>
<button class="btn btn-secondary rounded w-100" type="button" onclick="doVote('results'); return false;">Результаты</button>

</form>
[/votelist]
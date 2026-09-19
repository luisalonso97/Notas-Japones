local ruby_prompt = table.concat({
	"Use $japanese-vocabulary-ruby.",
	"The text received on stdin contains one or more TeX \\item vocabulary entries from this Japanese-notes repository.",
	"Return replacements for those lines only.",
	"Convert Japanese vocabulary to standard kanji only when confident from its reading, Spanish meaning, and nearby class-note context.",
	"Add furigana using this repository's \\ruby{漢|字}{かん|じ} convention.",
	"Preserve Spanish text, punctuation, grammar endings, and the \\item structure.",
	"If the intended kanji or reading is ambiguous, leave it in kana.",
	"Output only replacement TeX lines: no explanation and no Markdown.",
}, " ")

vim.keymap.set("v", "<localleader>jr", function()
	if vim.fn.executable("codex") ~= 1 then
		vim.notify("Codex CLI is not available on PATH", vim.log.levels.ERROR)
		return
	end

	local first_line = vim.fn.line("v")
	local last_line = vim.fn.line(".")
	if first_line > last_line then
		first_line, last_line = last_line, first_line
	end

	local buffer = vim.api.nvim_get_current_buf()
	local original_lines = vim.api.nvim_buf_get_lines(buffer, first_line - 1, last_line, false)
	local changedtick = vim.api.nvim_buf_get_changedtick(buffer)

	vim.notify("Codex: adding furigana…")
	vim.system({
		"codex",
		"exec",
		"-m",
		"gpt-5.6-luna",
		"-c",
		'model_reasoning_effort="low"',
		"-c",
		'model_verbosity="low"',
		"--ephemeral",
		"--sandbox",
		"read-only",
		ruby_prompt,
	}, {
		cwd = vim.fn.getcwd(),
		stdin = table.concat(original_lines, "\n") .. "\n",
		text = true,
	}, vim.schedule_wrap(function(result)
		if result.code ~= 0 then
			vim.notify("Codex failed:\n" .. result.stderr, vim.log.levels.ERROR)
			return
		end

		if not vim.api.nvim_buf_is_valid(buffer) or vim.api.nvim_buf_get_changedtick(buffer) ~= changedtick then
			vim.notify("Codex response was not applied because the buffer changed.", vim.log.levels.WARN)
			return
		end

		local replacement = vim.split(result.stdout, "\n", { plain = true, trimempty = true })
		if #replacement == 0 then
			vim.notify("Codex returned no replacement lines.", vim.log.levels.ERROR)
			return
		end

		vim.api.nvim_buf_set_lines(buffer, first_line - 1, last_line, false, replacement)
		vim.notify("Codex: furigana inserted.")
	end))
end, {
	desc = "Japanese: add ruby to selected vocabulary",
})

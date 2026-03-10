local M = {}

local function word_count(s)
	local _, count = s:gsub("%S+", "")
	return count
end

function M.get_counts()
	local line = vim.api.nvim_get_current_line()
	local buf = vim.api.nvim_buf_get_lines(0,0,-1,false)

	local line_chars = #line
	local line_words = word_count(line)

	local file_text = table.concat(buf, "\n")
	local file_chars = #file_text
	local file_words = word_count(file_text)

	return string.format(
		"Line: %d chars, %d words | File: %d chars, %d words",
		line_chars, line_words, file_chars, file_words
	)
end

return M

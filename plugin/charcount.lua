local charcount = require("charcount")

-- Set statusline function
vim.o.statusline = "%!v:lua.require'charcount'.get_counts()"

-- Only update in normal mode
vim.api.nvim_create_autocmd({"CursorMoved", "TextChanged"}, {
  callback = function()
    if vim.fn.mode() == "n" then  -- normal mode check
      vim.cmd("redrawstatus")
    end
  end,
})

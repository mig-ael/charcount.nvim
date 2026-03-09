vim.api.nvim_create_user_command("charcount", function()
  require("charcount").hello()
end, {})

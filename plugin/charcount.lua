vim.api.nvim_create_user_command("Charcount", function()
  require("charcount").hello()
end, {})

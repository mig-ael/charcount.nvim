vim.keymap.set("n", "<leader>mp", function()
  require("charcount").run()
end, { desc = "Run charcount plugin" })

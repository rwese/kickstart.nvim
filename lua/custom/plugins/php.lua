vim.api.nvim_set_keymap('n', '<leader>wo', '<cmd>Telescope lsp_document_symbols ignore_symbols=variable<CR>', { desc = 'LSP: [W]orkspace [O]utline', noremap = true, silent = true })

return {}

local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup {
}

lspconfig.lua_ls.setup {
}

lspconfig.pyright.setup {
}

lspconfig.tinymist.setup {
  settings = {
	  formatterMode = "typstyle",
	  exportPdf = "onType",
	  semanticTokens = "disable"
  }
}

vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>', { desc = 'Hover informations' })
vim.keymap.set('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', { desc = 'Format the code' })
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { desc = 'Get the References' })
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'Go to Definition' })
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { desc = 'Go to Declaration' })
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { desc = 'Get the Implementations' })
vim.keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { desc = 'Go to Type Definition' })
vim.keymap.set('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>', { desc = 'Rename the symbol' })
vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', { desc = 'Select code actions' })
vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Show Diagnostics in a floating window' })
vim.keymap.set('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { desc = 'Go to the next Diagnostics' })
vim.keymap.set('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { desc = 'Go to the previous Diagnostics' })

local langs = {
    "lua_ls",
    "ast_grep",
    "bashls",
    "clangd",
    "omnisharp_mono",
    "omnisharp",
    "cssls",
    "cssmodules_ls",
    "unocss",
    "golangci_lint_ls",
    "gopls",
    "html",
    "jsonls",
    "biome",
    "quick_lint_js",
    "tsserver",
    "vtsls",
    "pyright",
  }

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = langs
})

for _, lang in ipairs(langs) do
  require("lspconfig")[lang].setup{}
end

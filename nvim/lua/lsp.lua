vim.lsp.enable("lua_ls")
vim.lsp.enable("vimls")
vim.lsp.enable("intelephense")
vim.lsp.config("gdscript", {})
vim.lsp.enable("gdscript")

if vim.fn.filereadable(vim.fn.getcwd() .. "/project.godot") == 1 then
    vim.fn.serverstart("/tmp/godot.pipe")
end

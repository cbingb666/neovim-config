if vim.g.vscode then
    -- VSCode extension
    require('vscode-neovim.basic')
    require('vscode-neovim.comment')
    require('vscode-neovim.keybings')
else
    -- ordinary Neovim
    -- 基础设置
    require('basic')
    -- 快捷键绑定
    -- require('keybindings')
    -- Packer 插件管理
    require('plugins')
    -- 主题设置 （新增）
    require("colorscheme")
    -- 插件配置
    -- require("plugin-config.nvim-tree")
    -- require("plugin-config.nvim-treesitter") -- （新增）
end

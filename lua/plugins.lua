local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'

   --------------------- colorschemes --------------------
   -- tokyonight
   use("folke/tokyonight.nvim")
   -- OceanicNext
   use("mhartington/oceanic-next")

   --------------------- nvim-tree --------------------
   -- nvim-tree (新增)
   use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })

   --------------------- nvim-comment --------------------
   use "terrortylor/nvim-comment"

end)


-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

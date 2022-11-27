local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- 跳转到引用
keymap('n', 'gr', '<Cmd>call VSCodeNotify("editor.action.goToReferences")<CR>', opts)

-- Change editor width
keymap('n', '<C-w>_', ':<C-u>call VSCodeNotify("workbench.action.toggleEditorWidths")<CR>', opts)

-- fold
keymap('n', 'zM', ':call VSCodeNotify("editor.foldAll")<CR>', opts)
keymap('n', 'zR', ':call VSCodeNotify("editor.unfoldAll")<CR>', opts)
keymap('n', 'zc', ':call VSCodeNotify("editor.fold")<CR>', opts)
keymap('n', 'zo', ':call VSCodeNotify("editor.unfold")<CR>', opts)

-- rename symbol
keymap('n', '<Space>re', ':call VSCodeNotify("editor.action.rename")<CR>', opts)

-- Use VSCode Comments
opts.noremap = false
keymap('x', 'gc', '<Plug>VSCodeCommentary', opts)
keymap('n', 'gc', '<Plug>VSCodeCommentary', opts)
keymap('o', 'gc', '<Plug>VSCodeCommentary', opts)
keymap('n', 'gcc', '<Plug>VSCodeCommentaryLine', opts)

-- jk 用映射jk，消除移动光标时展开折叠
keymap('n', 'j', 'gj', opts)
keymap('n', 'k', 'gk', opts)


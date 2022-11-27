if exists('g:vscode')
    " VSCode extension
    "
    " -- leader map
    let mapleader = " "

    " ----------------------- base -----------------------
    " 重命名
    nnoremap <silent> <leader>re <Cmd>call VSCodeNotify('editor.action.rename')<CR>
    " 转到引用
    nnoremap <silent> gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
    " next tab
    nnoremap <silent> <leader>tl <Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>
    " prev tab
    nnoremap <silent> <leader>th <Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>
    " next tab
    nnoremap <silent> <leader>wl <Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<CR>
    " prev tab
    nnoremap <silent> <leader>wh <Cmd>call VSCodeNotify('workbench.action.previousEditorInGroup')<CR>
    " nnoremap k <Cmd>call VSCodeNotify('cursorMove', { 'to': 'up', 'by': 'line', 'value': v:count ? v:count : 1 })<CR>
    nnoremap j <Cmd>call VSCodeNotify('cursorMove', { 'to': 'down', 'by': 'line', 'value': v:count ? v:count : 1 })<CR>
    nnoremap k <Cmd>call VSCodeNotify('cursorMove', { 'to': 'up', 'by': 'line', 'value': v:count ? v:count : 1 })<CR>


    " ----------------------- fold -----------------------
    nnoremap <silent> za <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
    nnoremap <silent> zR <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
    nnoremap <silent> zM <Cmd>call VSCodeNotify('editor.foldAll')<CR>
    nnoremap <silent> zo <Cmd>call VSCodeNotify('editor.unfold')<CR>
    nnoremap <silent> zO <Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>
    nnoremap <silent> zc <Cmd>call VSCodeNotify('editor.fold')<CR>
    nnoremap <silent> zC <Cmd>call VSCodeNotify('editor.foldRecursively')<CR>
    nnoremap <silent> z1 <Cmd>call VSCodeNotify('editor.foldLevel1')<CR>
    nnoremap <silent> z2 <Cmd>call VSCodeNotify('editor.foldLevel2')<CR>
    nnoremap <silent> z3 <Cmd>call VSCodeNotify('editor.foldLevel3')<CR>
    nnoremap <silent> z4 <Cmd>call VSCodeNotify('editor.foldLevel4')<CR>
    nnoremap <silent> z5 <Cmd>call VSCodeNotify('editor.foldLevel5')<CR>
    nnoremap <silent> z6 <Cmd>call VSCodeNotify('editor.foldLevel6')<CR>
    nnoremap <silent> z7 <Cmd>call VSCodeNotify('editor.foldLevel7')<CR>
    nnoremap <silent> zV <Cmd>call VSCodeNotify('editor.foldAllExcept')<CR>
  else
    " ordinary Neovim
endif


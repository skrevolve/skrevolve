" DO NOT EDIT THIS FILE
" Add your own customizations in ~/.vim_runtime/my_configs.vim

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
try
  source ~/.vim_runtime/my_configs.vim
catch
endtry

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vimwiki/vimwiki'
call plug#end()

let mapleader = ","

let g:vimwiki_list = [
    \{
    \   'path': '~/skrevolve/wiki',
    \   'syntax': 'markdown',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \}
\]

" vimwiki의 conceallevel 을 끄는 쪽이 좋다
let g:vimwiki_conceallevel = 0

" Markdown to HTML 자동 변환 함수
function! SaveAndConvertToHTML()
    " 현재 파일 저장
    write
    " 현재 파일명 가져오기
    let current_file = expand('%:p')
    " .html 파일명 생성
    let html_file = expand('%:p:r') . '.html'
    " pandoc으로 변환 실행
    execute '!pandoc ' . current_file . ' -o ' . html_file
endfunction

" 저장시 자동 변환
autocmd BufWritePost *.md call SaveAndConvertToHTML()

" F4 키를 누르면 커서가 놓인 단어를 위키에서 검색한다.
" nnoremap <F4> :execute "VWS /" . expand("<cword>") . "/" <Bar> :lopen<CR>

" Shift F4 키를 누르면 현재 문서를 링크한 모든 문서를 검색한다
" nnoremap <S-F4> :execute "VWB" <Bar> :lopen<CR>
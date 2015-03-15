" Date Create: 2015-02-06 23:48:59
" Last Change: 2015-03-15 22:44:59
" Author: Artur Sh. Mamedbekov (Artur-Mamedbekov@yandex.ru)
" License: GNU GPL v3 (http://www.gnu.org/copyleft/gpl.html)

let s:Plugin = vim_lib#sys#Plugin#

let s:p = s:Plugin.new('shipit', '1', {'plugins': ['vim_deploy']})

function! s:p.run() " {{{
  au BufNewFile,BufRead .shipit set filetype=shipitEdit " Определение типа файла конфигурации shipit.
endfunction " }}}

call s:p.reg()

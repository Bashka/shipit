" Date Create: 2015-02-06 23:15:57
" Last Change: 2015-02-06 23:54:54
" Author: Artur Sh. Mamedbekov (Artur-Mamedbekov@yandex.ru)
" License: GNU GPL v3 (http://www.gnu.org/copyleft/gpl.html)

let s:Deployer = vim_deploy#Deployer
let s:System = vim_lib#sys#System#.new()

let s:Class = s:Deployer.expand()

function! s:Class.list() " {{{
  return s:System.run('shipit list')
endfunction " }}}

function! s:Class.deploy() " {{{
  call s:System.exe('shipit')
endfunction " }}}

function! s:Class.run(task) " {{{
  call s:System.exe('shipit ' . a:task)
endfunction " }}}

let g:shipit#deployer = s:Class

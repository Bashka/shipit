" Date Create: 2015-02-06 23:15:57
" Last Change: 2015-03-15 22:50:33
" Author: Artur Sh. Mamedbekov (Artur-Mamedbekov@yandex.ru)
" License: GNU GPL v3 (http://www.gnu.org/copyleft/gpl.html)

let s:Deployer = vim_deploy#Deployer
let s:System = vim_lib#sys#System#.new()
let s:Buffer = vim_lib#sys#Buffer#

let s:Class = s:Deployer.expand()

function! s:Class.list() " {{{
  return 'Available shipit targets:' . strpart(s:System.run('shipit list'), 45)
endfunction " }}}

function! s:Class.deploy() " {{{
  call s:System.exe('shipit')
endfunction " }}}

function! s:Class.run(task) " {{{
  call s:System.exe('shipit ' . a:task)
endfunction " }}}

function! s:Class.confFile() " {{{
  return '.shipit'
endfunction " }}}

let g:shipit#deployer = s:Class

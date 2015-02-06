" Date Create: 2015-02-06 23:48:59
" Last Change: 2015-02-06 23:52:26
" Author: Artur Sh. Mamedbekov (Artur-Mamedbekov@yandex.ru)
" License: GNU GPL v3 (http://www.gnu.org/copyleft/gpl.html)

let s:Plugin = vim_lib#sys#Plugin#

let s:p = s:Plugin.new('shipit', '1', {'plugins': ['vim_deploy']})

call s:p.reg()

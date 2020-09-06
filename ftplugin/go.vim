if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" don't spam the user when Vim is started in Vi compatibility mode
let s:cpo_save = &cpo
set cpo&vim

setlocal formatoptions-=t

setlocal comments=s1:/*,mb:*,ex:*/,://
setlocal commentstring=//\ %s

setlocal noexpandtab

compiler go

onoremap <buffer> <silent> af :<c-u>call go#textobj#Function('a')<cr>
xnoremap <buffer> <silent> af :<c-u>call go#textobj#Function('a')<cr>

onoremap <buffer> <silent> if :<c-u>call go#textobj#Function('i')<cr>
xnoremap <buffer> <silent> if :<c-u>call go#textobj#Function('i')<cr>

onoremap <buffer> <silent> ac :<c-u>call go#textobj#Comment('a')<cr>
xnoremap <buffer> <silent> ac :<c-u>call go#textobj#Comment('a')<cr>

onoremap <buffer> <silent> ic :<c-u>call go#textobj#Comment('i')<cr>
xnoremap <buffer> <silent> ic :<c-u>call go#textobj#Comment('i')<cr>

" Remap ]] and [[ to jump betweeen functions as they are useless in Go
nnoremap <buffer> <silent> ]] :<c-u>call go#textobj#FunctionJump('n', 'next')<cr>
nnoremap <buffer> <silent> [[ :<c-u>call go#textobj#FunctionJump('n', 'prev')<cr>

onoremap <buffer> <silent> ]] :<c-u>call go#textobj#FunctionJump('o', 'next')<cr>
onoremap <buffer> <silent> [[ :<c-u>call go#textobj#FunctionJump('o', 'prev')<cr>

xnoremap <buffer> <silent> ] :<c-u>call go#textobj#FunctionJump('v', 'next')<cr>
xnoremap <buffer> <silent> [[ :<c-u>call go#textobj#FunctionJump('v', 'prev')<cr>]

" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

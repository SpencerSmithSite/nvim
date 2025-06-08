
" If you are distributing this theme, please replace this comment
" with the appropriate license attributing the original VS Code
" theme author.


" Greyish Blue with Orange - A nice dark theme

" ==========> Reset
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'greyish-blue-with-orange'

" ==========> Highlight function
function! s:h(face, guibg, guifg, ctermbg, ctermfg, gui)
  let l:cmd="highlight " . a:face
  
  if a:guibg != ""
    let l:cmd = l:cmd . " guibg=" . a:guibg
  endif

  if a:guifg != ""
    let l:cmd = l:cmd . " guifg=" . a:guifg
  endif

  if a:ctermbg != ""
    let l:cmd = l:cmd . " ctermbg=" . a:ctermbg
  endif

  if a:ctermfg != ""
    let l:cmd = l:cmd . " ctermfg=" . a:ctermfg
  endif

  if a:gui != ""
    let l:cmd = l:cmd . " gui=" . a:gui
  endif

  exec l:cmd
endfun


" ==========> Colors dictionary

" GUI colors dictionary (hex)
let s:hex = {}
" Terminal colors dictionary (256)
let s:bit = {}

let s:hex.color0="#2a2f33"
let s:hex.color1="#cccccc"
let s:hex.color2="#aeafad"
let s:hex.color3="#000000"
let s:hex.color4="#264f78"
let s:hex.color5="#34393d"
let s:hex.color6="#5c6165"
let s:hex.color7="#3e4347"
let s:hex.color8="#707579"
let s:hex.color9="#363a3d"
let s:hex.color10="#f4f4f4"
let s:hex.color11="#4f5356"
let s:hex.color12="#ffffff"
let s:hex.color13="#757a7e"
let s:hex.color14="#d1ac67"
let s:hex.color15="#484d51"
let s:hex.color16="#eaeaea"
let s:hex.color17="#d6d6d6"
let s:hex.color18="#4d5256"
let s:hex.color19="#b271e8"
let s:hex.color20="#d9d9d9"
let s:hex.color21="#e5c07b"
let s:hex.color22="#ff8b5e"
let s:hex.color23="#65eb8d"

let s:bit.color3="16"
let s:bit.color4="24"
let s:bit.color18="78"
let s:bit.color14="134"
let s:bit.color2="145"
let s:bit.color12="179"
let s:bit.color16="180"
let s:bit.color13="188"
let s:bit.color17="209"
let s:bit.color11="231"
let s:bit.color0="236"
let s:bit.color5="237"
let s:bit.color7="238"
let s:bit.color10="239"
let s:bit.color6="241"
let s:bit.color8="243"
let s:bit.color1="252"
let s:bit.color15="253"
let s:bit.color9="255"


" ==========> General highlights 
call s:h("Normal", s:hex.color0, s:hex.color1, s:bit.color0, s:bit.color1, "none")
call s:h("Cursor", s:hex.color2, s:hex.color3, s:bit.color2, s:bit.color3, "none")
call s:h("Visual", s:hex.color4, "", s:bit.color4, "", "none")
call s:h("ColorColumn", s:hex.color5, "", s:bit.color5, "", "none")
call s:h("LineNr", "", s:hex.color6, "", s:bit.color6, "none")
call s:h("CursorLine", s:hex.color7, "", s:bit.color7, "", "none")
call s:h("CursorLineNr", "", s:hex.color8, "", s:bit.color8, "none")
call s:h("CursorColumn", s:hex.color7, "", s:bit.color7, "", "none")
call s:h("StatusLineNC", s:hex.color9, s:hex.color10, s:bit.color5, s:bit.color9, "none")
call s:h("StatusLine", s:hex.color11, s:hex.color12, s:bit.color10, s:bit.color11, "none")
call s:h("VertSplit", "", s:hex.color13, "", s:bit.color8, "none")
call s:h("Folded", s:hex.color7, s:hex.color14, s:bit.color7, s:bit.color12, "none")
call s:h("Pmenu", s:hex.color15, s:hex.color16, s:bit.color10, s:bit.color9, "none")
call s:h("PmenuSel", s:hex.color5, s:hex.color17, s:bit.color5, s:bit.color13, "none")
call s:h("EndOfBuffer", s:hex.color0, s:hex.color18, s:bit.color0, s:bit.color10, "none")
call s:h("NonText", s:hex.color0, s:hex.color18, s:bit.color0, s:bit.color10, "none")


" ==========> Syntax highlights
call s:h("Constant", "", s:hex.color19, "", s:bit.color14, "none")
call s:h("Special", "", s:hex.color19, "", s:bit.color14, "none")
call s:h("Identifier", "", s:hex.color20, "", s:bit.color15, "none")
call s:h("Function", "", s:hex.color21, "", s:bit.color16, "none")
call s:h("Statement", "", s:hex.color22, "", s:bit.color17, "none")
call s:h("Operator", "", s:hex.color20, "", s:bit.color15, "none")
call s:h("PreProc", "", s:hex.color22, "", s:bit.color17, "none")
call s:h("Type", "", s:hex.color22, "", s:bit.color17, "none")
call s:h("String", "", s:hex.color23, "", s:bit.color18, "none")
call s:h("Number", "", s:hex.color19, "", s:bit.color14, "none")

highlight link cStatement Statement
highlight link cSpecial Special


" Generated using https://github.com/nice/themeforge
" Feel free to remove the above URL and this line.

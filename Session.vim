let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/01adit/PROJECTS/ASCII_RogueLike
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 GameSystem.h
badd +5 GameSystem.cpp
badd +17 main.cpp
badd +1 Player.h
badd +24 Player.cpp
badd +1 Level.h
badd +53 Level.cpp
badd +1 levels/level1.txt
badd +1 levels/level2.txt
badd +1 Enemy.cpp\ Enemy.h
badd +1 Enemy.cpp\ &&\ tabnew\ Enemy.h
badd +1 Enemy.h
badd +1 Enemy.cpp
badd +1 ~/01adit/PROJECTS/ASCII_RogueLike
badd +0 ToggleTerm
argglobal
%argdel
$argadd ~/01adit/PROJECTS/ASCII_RogueLike
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit Player.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 59 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 76 + 68) / 136)
argglobal
balt GameSystem.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 15 - ((14 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 02|
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
argglobal
if bufexists(fnamemodify("~/01adit/PROJECTS/ASCII_RogueLike/Player.cpp", ":p")) | buffer ~/01adit/PROJECTS/ASCII_RogueLike/Player.cpp | else | edit ~/01adit/PROJECTS/ASCII_RogueLike/Player.cpp | endif
if &buftype ==# 'terminal'
  silent file ~/01adit/PROJECTS/ASCII_RogueLike/Player.cpp
endif
balt ~/01adit/PROJECTS/ASCII_RogueLike/Player.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 28 - ((26 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 28
normal! 0
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
exe 'vert 1resize ' . ((&columns * 59 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 76 + 68) / 136)
tabnext
edit ~/01adit/PROJECTS/ASCII_RogueLike/Enemy.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 49 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 86 + 68) / 136)
argglobal
balt ~/01adit/PROJECTS/ASCII_RogueLike/levels/level1.txt
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 012|
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
argglobal
if bufexists(fnamemodify("~/01adit/PROJECTS/ASCII_RogueLike/Enemy.cpp", ":p")) | buffer ~/01adit/PROJECTS/ASCII_RogueLike/Enemy.cpp | else | edit ~/01adit/PROJECTS/ASCII_RogueLike/Enemy.cpp | endif
if &buftype ==# 'terminal'
  silent file ~/01adit/PROJECTS/ASCII_RogueLike/Enemy.cpp
endif
balt ~/01adit/PROJECTS/ASCII_RogueLike/Enemy.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 018|
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
exe 'vert 1resize ' . ((&columns * 49 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 86 + 68) / 136)
tabnext
edit ~/01adit/PROJECTS/ASCII_RogueLike/GameSystem.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 46 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 89 + 68) / 136)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
argglobal
if bufexists(fnamemodify("~/01adit/PROJECTS/ASCII_RogueLike/GameSystem.cpp", ":p")) | buffer ~/01adit/PROJECTS/ASCII_RogueLike/GameSystem.cpp | else | edit ~/01adit/PROJECTS/ASCII_RogueLike/GameSystem.cpp | endif
if &buftype ==# 'terminal'
  silent file ~/01adit/PROJECTS/ASCII_RogueLike/GameSystem.cpp
endif
balt ~/01adit/PROJECTS/ASCII_RogueLike/GameSystem.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 17 - ((16 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 0
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
exe 'vert 1resize ' . ((&columns * 46 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 89 + 68) / 136)
tabnext
edit ~/01adit/PROJECTS/ASCII_RogueLike/Level.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 62 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 73 + 68) / 136)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 23 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 02|
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
argglobal
if bufexists(fnamemodify("~/01adit/PROJECTS/ASCII_RogueLike/Level.cpp", ":p")) | buffer ~/01adit/PROJECTS/ASCII_RogueLike/Level.cpp | else | edit ~/01adit/PROJECTS/ASCII_RogueLike/Level.cpp | endif
if &buftype ==# 'terminal'
  silent file ~/01adit/PROJECTS/ASCII_RogueLike/Level.cpp
endif
balt ~/01adit/PROJECTS/ASCII_RogueLike/Level.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 54 - ((22 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 54
normal! 0
lcd ~/01adit/PROJECTS/ASCII_RogueLike
wincmd w
exe 'vert 1resize ' . ((&columns * 62 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 73 + 68) / 136)
tabnext
edit ~/01adit/PROJECTS/ASCII_RogueLike/main.cpp
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 18 - ((17 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
lcd ~/01adit/PROJECTS/ASCII_RogueLike
tabnext
edit ~/01adit/PROJECTS/ASCII_RogueLike/levels/level1.txt
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 16 - ((15 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 046|
lcd ~/01adit/PROJECTS/ASCII_RogueLike
tabnext
edit ~/01adit/PROJECTS/ASCII_RogueLike/levels/level2.txt
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 17 - ((16 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 066|
lcd ~/01adit/PROJECTS/ASCII_RogueLike
tabnext 5
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

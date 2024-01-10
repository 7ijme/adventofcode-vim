:%s/Game \(\d\+\)\+/+\1/g
gg
:let @s="0"
"macro
:let @b="0"
:let @g="0"
:let @r="0"
:s/\(\d\+\) blue/\=setreg('B', "+" .. submatch(1))/g
:let @b==b

:s/\(\d\+\) green/\=setreg('G', "+" .. submatch(1))/g
:let @g==g

:s/\(\d\+\) red/\=setreg('R', "+" .. submatch(1))/g
:let @r==r

:if @b <= 14 && @g <= 13 && @r <= 12
	:normal 0ve"Sy
:endif
:normal j

" THIS IS THE SOLUTION
let @z=":let [@b,@g,@r]=['0','0','0'] | s/\\(\\d\\+\\) blue/\\=setreg('B', ',' .. submatch(1))/g\<CR>:let @b = max(split(@b, ','))\<CR>:s/\\(\\d\\+\\) green/\\=setreg('G', ',' .. submatch(1))/g\<CR>:let @g = max(split(@g, ','))\<CR>:s/\\(\\d\\+\\) red/\\=setreg('R', ',' .. submatch(1))/g\<CR>:let @r = max(split(@r, ','))\<CR>:if @b <= 14 && @g <= 13 && @r <= 12\<CR>normal 0ve\"Sy\<CR>endif\<CR>j"
let @q="Go\<ESC>:%s/Game /+/g\<CR>gg:let @s='0'\<CR>100@zGVggdi\<C-R>=\<C-R>s\<CR>\<CR>\<ESC>jVjd"


" these were some notes
" set register G to game
let @y="gg0wvt:\"Gy0d2f "
:normal @y
:s/[,;] /\r/g
:normal Vgg
:'<,'>s/\(\d\+\) \(\w\).\+/\2\1
:'<,'>!sort
:normal! V/b\d
NNJ
:s/\w//g
:s/ /+/g


" notes

qw0wvt:"Gy0d2f 
:s/[,;] /\r/g
let @l = line('.')
Vgg
:'<,'>s/\(\d\+\) \(\w\).\+/\2\1
:'<,'>!sort
ggV
/b\d<CR>
NN
gj
:s/b//g
:s/ /+/g
cc<C-R>=<C-R>"<CR>
j
/g\d<CR>
NN
gj
:s/g//g
:s/ /+/g
cc<C-R>=<C-R>"<CR>
j
/r\d<CR>
NN
gj
:s/r//g
:s/ /+/g
cc<C-R>=<C-R>"<CR>
" bgr
ggve"bydd
ve"gydd
ve"rydd
G
:if @b <= 15 && @g <= 14 && @r <= 13<CR>
:  normal "Gp 



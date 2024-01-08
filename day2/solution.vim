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


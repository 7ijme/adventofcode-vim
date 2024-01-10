let @z=":let [@b,@g,@r]=['0','0','0'] | s/\\(\\d\\+\\) blue/\\=setreg('B', ',' .. submatch(1))/g\<CR>:let @b = max(split(@b, ','))\<CR>:s/\\(\\d\\+\\) green/\\=setreg('G', ',' .. submatch(1))/g\<CR>:let @g = max(split(@g, ','))\<CR>:s/\\(\\d\\+\\) red/\\=setreg('R', ',' .. submatch(1))/g\<CR>:let @r = max(split(@r, ','))\<CR>:let @S = '+' . @b . '*' . @g . '*' . @r\<CR>j"
let @q="Go\<ESC>:%s/Game /+/g\<CR>gg:let @s='0'\<CR>100@zGVggdi\<C-R>=\<C-R>s\<CR>\<CR>\<ESC>dd"
normal! @q

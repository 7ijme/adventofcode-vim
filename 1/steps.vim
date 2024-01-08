:%s/\D\+//g
:%s/^\(\d\)\d\+\(\d\)/\1\2
:%s/^\(\d\)$/\1\1
:normal! ggVGJ
:s/ /+/g
:normal! ddi="

:%s/one/one1one/g
:%s/two/two2two/g
:%s/three/three3three/g
:%s/four/four4four/g
:%s/five/five5five/g
:%s/six/six6six/g
:%s/seven/seven7seven/g
:%s/eight/eight8eight/g
:%s/nine/nine9nine/g
:%s/\D\+//g
:%s/^\(\d\)\d\+\(\d\)/\1\2
:%s/^\(\d\)$/\1\1
:normal! ggVGJ
:s/ /+/g
:normal! ddi="

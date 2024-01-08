" Note: This file can't be run using vim data -s explanation.vim
" Replace the text with the numbers
" I do add the text back, because of some cases like:
" eightwo -> 82
" I remove the text later anyway
:%s/one/one1one/g
:%s/two/two2two/g
:%s/three/three3three/g
:%s/four/four4four/g
:%s/five/five5five/g
:%s/six/six6six/g
:%s/seven/seven7seven/g
:%s/eight/eight8eight/g
:%s/nine/nine9nine/g
" Remove all non-digits
:%s/\D\+//g
" Get only the first and last digit
:%s/^\(\d\)\d\+\(\d\)/\1\2
" If there is only one digit, duplicate it
:%s/^\(\d\)$/\1\1
" Join all the digits on one line
:normal! ggVGJ
" Replace all spaces with +
:s/ /+/g
" Add the numbers together
:normal! ddi="

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

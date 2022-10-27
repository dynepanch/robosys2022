#!/bin/bash

nc(){
	echo ${1}行目が違うよ
	ret=1
}

ret=0
a=yamada

[ "$a" = ueda ] || nc "$LINENO"

test "$a" = yamada || nc "$LINENO"

exit $ret

#!/bin/bash 
#SPDX-FileCopyrightText:2022 Ken Inaba rightman20020920@yahoo.co,jp
#SPDX-Licence-Identifire:BSD-3-Clause

ng () {
	echo NG at Line $1
       res=1	
}
res=0

## I/O TEST ##
out=$(seq 5 | ./plus)
[ "${out}"="plus=15 product=120" ] || ng ${LINENO}
[ "$res" = 0 ] && echo No_5 OK

out=$(seq -5 0.5 -1 | ./plus)
[ "${out}"="plus=-27.0 product=-7087.5" ] || ng ${LINENO}
[ "$res" = 0 ] && echo No_5 OK


out=$(seq 10 | ./plus)
[ "${out}"="plus=55 product=3628800" ] || ng ${LINENO}
[ "$res" = 0 ] && echo No_10 OK

out=$(seq 0 ./plus)
[ "${put}"="plus=0 product=1" ] || ng ${LINENO}
[ "$res"= 0 ] && echo No_0 OK

out=$(seq -5 10 | ./plus)
[ "${out}"="plus=40 product=0" ]
[ "$res"=0 ] && echo No_-5~10 OK

out=$(echo あ | ./plus)
[ "$?" = 1 ]	    ||	ng ${LINENO}
[ "${out}" = "" ] ||	ng ${LINENO}

[ "$res" = 0 ] && echo inputあ OK

out=$(echo " " | ./plus )
[ "$?" = 1 ]	    ||	ng ${LINENO}
[ "${out}" = "" ] ||	ng ${LINENO}

[ "$res" = 0 ] && echo input space OK

out=$(echo 三 | ./plus)
[ "${out}" = "plus=3 product=3" ] 
[ "$res" = 0 ] && echo input三 OK

out=$(seq 1 0.1 2 | ./plus)
[ "${out}" = "puls=16.5 product=67.04425728" ]
[ "$res" = 0 ] && echo input_float OK

exit $res

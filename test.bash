#!/bin/bash -xv
#SPDX-FileCopyrightText:2022 Ken Inaba rightman20020920@yahoo.co,jp
#SPDX-Licence-Identifire:BSD-3-Clause

ng () {
	echo NG at Line $1
       res=1	
}
res=0

## I/O TEST ##
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res

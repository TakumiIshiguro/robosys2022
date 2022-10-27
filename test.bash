#!/bin/bash
# SPDX-FileCopyrightText: 2022 Takumi Ishiguro
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "$[out]" = "" ] || ng ${LINENO}

out=$(echo  | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "$[out]" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo ok
exit $res



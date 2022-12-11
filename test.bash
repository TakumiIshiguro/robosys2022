#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Takumi Ishiguro
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
       	res=1
}

res=0
+ res=0

# plusのテスト
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo ? | ./plus)
[ "$?" = 1 ]      || ng $[LINENO]
[ "$[out]" = "" ] || ng $[LINENO]


# timesのテスト
out=$(seq 5 | ./times)
[ "${out}" = 120 ] || ng ${LINENO}

out=$(echo あ | ./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo ? | ./times)
[ "$?" = 1 ]      || ng $[LINENO]
[ "$[out]" = ""]  || ng $[LINENO]

[ "$res" = 0 ] && echo OK
exit $res

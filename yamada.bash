#!/bin/bash

ng () {
	 echo ${1}行目が違う
	 ret=1
}

ret=0
a=yamada
[ "$a" = ueda ] || ng "$LINENO"
[ "$a" = yamada ] || ng "$LINENO"

exit $ret


#!/bin/bash

ret=0
[ $# -gt 0 ] && range=$1 || range=[0-9]

for i in test${range}*.sh; do
	echo -n "$i: "
       	./$i || ret=1
done

exit $ret

#!/bin/bash

. test.common

NTPD1_OPTS="-I eth0" test_ntpclient 20000 "kernel PLL SHIFT_PLL=2 (-I eth0)"
check_sync 2 100 10000 || test_fail

NTPD1_OPTS="-I lo" test_ntpclient 20000 "kernel PLL SHIFT_PLL=2 (-I lo)"
check_sync 2 100 10000 && test_fail

test_success

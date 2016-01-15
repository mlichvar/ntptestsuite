#!/bin/bash

. test.common

timeoff=-1e-1
freqoff=-1e-4
jitter=2e-4
xleave=yes

test_ntpbroadcastclient 20000 "xleave"

check_sync 2 1000 20000 || test_fail

test_success

#!/bin/bash

. test.common

timeofflimit=2e-3
freqofflimit=10e-6
auth=GQ

test_ntppeer 100000 10000 "autokey, GQ scheme"

check_sync 3 1000 10000 || test_fail
check_sync 4 2000 11000 || test_fail
check_stats 3 || test_fail
check_stats 4 || test_fail

test_success

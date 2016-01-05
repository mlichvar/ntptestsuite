#!/bin/bash

. test.common

timeofflimit=1.0
freqofflimit=1000e-6
timeoff=10
auth=TC

test_ntpclient 20000 "loose sync, autokey, TC scheme"

check_sync 2 100 10000 || test_fail

test_success

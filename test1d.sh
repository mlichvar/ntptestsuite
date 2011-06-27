#!/bin/bash

. test.common

timeofflimit=5e-3
freqofflimit=10e-6

daemonloop=yes
allan=1

test_ntpclient 15000 "daemon FLL"

check_sync 2 1000 10000 || test_fail

test_success

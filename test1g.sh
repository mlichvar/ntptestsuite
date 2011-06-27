#!/bin/bash

. test.common

freqoff=-1e-5
timeoff=1e-2
driftfile=no

test_ntpclient 10000 "no drift file"

check_sync 2 500 10000 || test_fail

test_success

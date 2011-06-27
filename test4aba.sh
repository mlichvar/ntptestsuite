#!/bin/bash

. test.common

timeofflimit=1.0
freqofflimit=1000e-6
timeoff=10
auth=symmMD5

test_ntpbroadcastclient 20000 "loose sync, symmetric key, MD5"

check_sync 2 100 20000 || test_fail

test_success

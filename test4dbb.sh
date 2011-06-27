#!/bin/bash

. test.common

freqoff=-1e-4
timeoff=-1e-1
jitter=1e-4
auth=IFF

test_ntpbroadcastclient 20000 "autokey, IFF scheme"

check_sync 2 1000 20000 || test_fail

test_success

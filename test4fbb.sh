#!/bin/bash

. test.common

freqoff=-1e-4
timeoff=-1e-1
jitter=1e-4
auth=TC

test_ntpbroadcastclient 20000 "autokey, TC scheme"

check_sync 2 1000 20000 || test_fail

test_success

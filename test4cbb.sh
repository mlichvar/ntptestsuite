#!/bin/bash

. test.common

freqoff=-1e-4
timeoff=-1e-1
jitter=1e-4
auth=GQ

test_ntpbroadcastclient 20000 "autokey, GQ scheme"

check_sync 2 1000 20000 || test_fail

test_success

#!/bin/bash

. test.common

timeofflimit=40e-3
freqofflimit=10e-6

timeoff=-1e-1
freqoff=-1e-4
jitter=2e-4

test_ntpbroadcastclient 20000 "loose sync"

check_sync 2 1000 20000 || test_fail

test_success

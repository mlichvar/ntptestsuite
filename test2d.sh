#!/bin/bash

. test.common

timeoff=-1e-1
freqoff=-1e-4
jitter=2e-4
broadcastdelay=$(echo $jitter | awk '{ print $1 * 22}')

test_ntpbroadcastclient 20000 "broadcastdelay"

check_sync 2 1000 20000 || test_fail

test_success

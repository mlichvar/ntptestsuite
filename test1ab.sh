#!/bin/bash

. test.common

freqoff=-1e-4
timeoff=-1e-1

test_ntpclient 20000 "kernel PLL SHIFT_PLL=2, negative offset"

check_sync 2 2000 10000 || test_fail

test_success

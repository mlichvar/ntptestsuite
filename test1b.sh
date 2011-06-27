#!/bin/bash

. test.common

shiftpll=4

test_ntpclient 50000 "kernel PLL SHIFT_PLL=4"

check_sync 2 5000 50000 || test_fail

test_success

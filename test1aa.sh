#!/bin/bash

. test.common

test_ntpclient 20000 "kernel PLL SHIFT_PLL=2"

check_sync 2 2000 10000 || test_fail

test_success

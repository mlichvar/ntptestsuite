#!/bin/bash

. test.common

daemonloop=yes

test_ntpclient 70000 "daemon PLL"

check_sync 2 3000 70000 || test_fail

test_success

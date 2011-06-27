#!/bin/bash

. test.common

timeoff=10.0
jitter=1e-4

test_ntpclient 2000 "stepping"

check_sync 2 300 2000 || test_fail

test_success

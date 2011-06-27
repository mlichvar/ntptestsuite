#!/bin/bash

. test.common

timeoff=5.5
step=600

test_ntpclient 150000 "no stepping"

check_sync 2 30000 150000 || test_fail

test_success

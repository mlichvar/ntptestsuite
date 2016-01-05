#!/bin/bash

. test.common

auth=TC

test_ntpclient 20000 "autokey, TC scheme"

check_sync 2 1000 10000 || test_fail

test_success

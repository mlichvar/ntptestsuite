#!/bin/bash

. test.common

auth=GQ

test_ntpclient 20000 "autokey, GQ scheme"

check_sync 2 1000 10000 || test_fail

test_success

#!/bin/bash

. test.common

auth=IFF

test_ntpclient 20000 "autokey, IFF scheme"

check_sync 2 1000 10000 || test_fail

test_success

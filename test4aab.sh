#!/bin/bash

. test.common

auth=symmMD5

test_ntpclient 20000 "symmetric key, MD5"

check_sync 2 1000 10000 || test_fail

test_success

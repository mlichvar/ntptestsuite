#!/bin/bash

. test.common

auth=symmSHA1

test_ntpclient 20000 "symmetric key, SHA1"

check_sync 2 1000 10000 || test_fail

test_success

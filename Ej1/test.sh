#!/bin/bash

# Using assert.sh library: https://github.com/lehmannro/assert.sh

. assert.sh

assert "echo test" "test"
assert "./run 0 1 1" "Res: 0.5 | Ran: 1.5"
assert "./run 1 1 1" "Res: 0.5 | Ran: 1.5"
assert "./run 0 1 2" "Res: 0.25 | Ran: 1.75"
assert "./run 0 a 1" "ERROR"

# end of test suite
assert_end

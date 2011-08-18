# https://github.com/peterc/testrocket

# # USAGE
# +-> { block that should succeed }
# --> { block that should fail }
#
## These two tests will deliberately fail
#+-> { raise }
#--> { true }
#
## A 'pending' test
#~-> { "this is a pending test" }
#
## A description
#!-> { "use this for descriptive output and to separate your test parts" }

require 'test_helper'

+-> { 'string'.reverse == 'gnirts' }
--> { 'string'.reverse == 'string' }

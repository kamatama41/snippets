#!/bin/bash

set -eu

RUNTIME=${1}
shift
ARGS="${@}"
if [ "${RUNTIME}" == "jruby" ]; then
  cmd="~/.rbenv/versions/jruby-9.1.13.0/bin/jruby /test.rb ${ARGS}"
else
  cmd="~/.rbenv/versions/2.4.2/bin/ruby /test.rb ${ARGS}"
fi
echo "Run: ${cmd}"
exec /bin/bash -lc "${cmd}"

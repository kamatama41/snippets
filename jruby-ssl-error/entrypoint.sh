#!/bin/bash

CMD=${1:-bash}
shift
ARGS="${@}"
if [ "${CMD}" == "jruby" ]; then
  run="~/.rbenv/versions/jruby-9.1.13.0/bin/jruby /test.rb ${ARGS}"
elif [ "${CMD}" == "ruby" ]; then
  run="~/.rbenv/versions/2.4.2/bin/ruby /test.rb ${ARGS}"
else
  run="${CMD} ${ARGS}"
fi
echo "Run: ${run}"
exec /bin/bash -lc "${run}"

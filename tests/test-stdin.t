-*- coding: utf-8 -*-

  $ if [ -n "$COVERAGE" ]; then
  >   export COVERAGE_FILE=$TESTDIR/../.coverage
  >   alias clean="coverage run --branch -a $TESTDIR/../clean"
  > fi

With '-' arg:

  $ echo '' | clean -a -
  added -
  # -*- coding: utf-8 -*-
  

With no arg:

  $ echo '' | clean -a
  added -
  # -*- coding: utf-8 -*-
  

Debug output is on stderr:

  $ echo '' | clean -a - 2>/dev/null
  # -*- coding: utf-8 -*-
  

-*- coding: utf-8 -*-

  $ if [ -n "$COVERAGE" ]; then
  >   export COVERAGE_FILE=$TESTDIR/../.coverage
  >   alias clean="coverage run --branch -a $TESTDIR/../clean"
  > fi

  $ touch empty.py
  $ echo "# one line" > one-line.py
  $ echo "# coding: utf-8" > only-coding-line.py
  $ cat > ascii.py <<EOM
  > # coding: utf-8
  > # ASCII text
  > EOM

  $ echo "# coding: utf-8; ☃" > utf-8.py
  $ clean -r *.py
  cleaned ascii.py
  cleaned only-coding-line.py

  $ cat ascii.py
  # ASCII text
  $ cat only-coding-line.py

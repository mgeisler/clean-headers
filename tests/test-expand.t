-*- coding: utf-8 -*-

  $ if [ -n "$COVERAGE" ]; then
  >   export COVERAGE_FILE=$TESTDIR/../.coverage
  >   alias clean="coverage run --branch -a $TESTDIR/../clean"
  > fi

  $ echo "# Copyright © Me" > with-copyright.py
  $ echo "# No copyright ©" > without-copyright.py
  $ echo "copyright = '©'" > no-comment.py

  $ clean -e with-copyright.py without-copyright.py no-comment.py
  expanded with-copyright.py
  expanded without-copyright.py
  $ cat with-copyright.py
  # Copyright (c) Me
  $ cat without-copyright.py
  # No copyright (c)

The copyrigh symbol is not expanded when it is not in a comment:

  $ cat no-comment.py
  copyright = '\xc2\xa9' (esc)

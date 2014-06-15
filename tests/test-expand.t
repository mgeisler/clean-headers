-*- coding: utf-8 -*-

  $ if [ -n "$COVERAGE" ]; then
  >   export COVERAGE_FILE=$TESTDIR/../.coverage
  >   alias clean="coverage run --branch -a $TESTDIR/../clean"
  > fi

  $ echo "# Copyright © Me" > with-copyright.py
  $ echo "# No copyright ©" > without-copyright.py

  $ clean -e with-copyright.py without-copyright.py
  expanded with-copyright.py
  expanded without-copyright.py
  $ cat with-copyright.py
  # Copyright (c) Me
  $ cat without-copyright.py
  # No copyright (c)

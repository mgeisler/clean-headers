-*- coding: utf-8 -*-

  $ if [ -n "$COVERAGE" ]; then
  >   export COVERAGE_FILE=$TESTDIR/../.coverage
  >   alias clean="coverage run --branch -a $TESTDIR/../clean"
  > fi

  $ echo "# Copyright © Me" > with-copyright.py
  $ echo "# No copyright ©" > without-copyright.py
  $ echo "Not a comment: Copyright © Me" > not-comment.py

  $ clean -s *.py
  simplified with-copyright.py

  $ cat with-copyright.py
  # Copyright Me

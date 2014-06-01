-*- coding: utf-8 -*-

  $ if [ -n "$COVERAGE" ]; then
  >   export COVERAGE_FILE=$TESTDIR/../.coverage
  >   alias clean="coverage run --branch -a $TESTDIR/../clean"
  > fi

  $ echo "# -*- coding: utf-8 -*-" > good.py
  $ echo "# -*- coding=utf-8 -*-" > equal.py
  $ echo "# coding: utf-8" > no-marker.py
  $ echo "# -*- encoding: utf-8 -*-" > encoding.py

  $ clean -f *.py
  fixed encoding.py
  fixed equal.py
  fixed no-marker.py

  $ cat equal.py
  # -*- coding: utf-8 -*-

  $ cat no-marker.py
  # -*- coding: utf-8 -*-

  $ cat encoding.py
  # -*- coding: utf-8 -*-

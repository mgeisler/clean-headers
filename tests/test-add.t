-*- coding: utf-8 -*-

  $ if [ -n "$COVERAGE" ]; then
  >   export COVERAGE_FILE=$TESTDIR/../.coverage
  >   alias clean="coverage run --branch -a $TESTDIR/../clean"
  > fi

  $ touch empty.py
  $ echo "# one line" > one-line.py
  $ echo "# coding: utf-8" > only-coding-line.py

  $ cat > blank-first.py <<EOM
  >  
  > # ...
  > EOM

  $ cat > comment-first.py <<EOM
  > #
  > # ...
  > EOM

  $ cat > shebang.py <<EOM
  > #!/bin/python
  > # no coding line
  > EOM

  $ clean -a *.py
  added blank-first.py
  added comment-first.py
  added one-line.py
  added shebang.py

  $ cat blank-first.py
  # -*- coding: utf-8 -*-
   
  # ...

  $ cat one-line.py
  # -*- coding: utf-8 -*-
  #
  # one line

  $ cat shebang.py
  #!/bin/python
  # -*- coding: utf-8 -*-
  #
  # no coding line

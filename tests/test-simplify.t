-*- coding: utf-8 -*-

  $ echo "# Copyright © Me" > with-copyright.py
  $ echo "# No copyright ©" > without-copyright.py
  $ echo "Not a comment: Copyright © Me" > not-comment.py

  $ clean -s *.py
  simplified with-copyright.py

  $ cat with-copyright.py
  # Copyright Me

clean-headers
=============

[![Build Status](https://travis-ci.org/mgeisler/clean-headers.svg?branch=master)](https://travis-ci.org/mgeisler/clean-headers)
[![Coverage Status](https://img.shields.io/coveralls/mgeisler/clean-headers.svg)](https://coveralls.io/r/mgeisler/clean-headers?branch=master)


This is a simple script for adding/removing Python/Ruby file encoding
headers. This is headers line

    # -*- coding: utf-8 -*-

found as the first or second line in a file. The line informs both
Python/Ruby and Emacs about the encoding used in the file.


Contributing
------------

Please open a pull request! Travis will test the code (including
running it through pep8 and pyflakes) and let you know about the
results. The test coverage will also be reported, please try to keep
it as high as you found it.


License
-------

The clean headers script is licensed under the [MIT license][1].

[1]: LICENSE

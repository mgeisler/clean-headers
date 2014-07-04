#
# Copyright 2014 Martin Geisler
#
# This software may be modified and distributed under the terms of the
# MIT license. Please see the LICENSE file for details.

"""
Clean File Headers
"""

from distutils.core import setup

import sys

requires = []
if sys.version_info < (2, 7):
    requires.append('argparse')

setup(name='clean-headers',
      version='0.1',
      maintainer='Martin Geisler',
      maintainer_email='martin@geisler.net',
      url='https://github.com/mgeisler/clean-headers',
      description='Clean File Headers',
      platforms=['any'],
      license='MIT',
      classifiers=['Development Status :: 3 - Alpha',
                   'Programming Language :: Python :: 2',
                   'Programming Language :: Python :: 3'],
      install_requires=requires,
      scripts=['clean'])

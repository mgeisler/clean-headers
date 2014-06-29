
Basic help works:

  $ clean -h
  usage: clean [-h] [-e] [-s] [-r] [-f] [-a] [files [files ...]]
  
  positional arguments:
    files           files to process
  
  optional arguments:
    -h, --help      show this help message and exit
    -e, --expand    expand unicode copyright symbol into (c)
    -s, --simplify  simplify by removing unicode copyright symbol
    -r, --remove    remove unnecessary coding line
    -f, --fix       make encoding line Emacs-friendly
    -a, --add       add Emacs-friendly encoding line

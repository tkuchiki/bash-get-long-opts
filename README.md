bash-get-long-opts
==================

Get long options for bash.  
This script run on the bash.

# Functions

## usage

Print command usage.

## parse_options

Parse `-abc` style options.

~~~~
$ parse_options --foo -abc -s bar
--foo -a -b -c -s bar
~~~~

## get_long_options

Get long options.

~~~~
$ get_long_options $(parse_options --foo -abc -s bar)
~~~~

# Example

[example.sh](https://github.com/tkuchiki/bash-get-long-opts/blob/master/example.sh)

## Non-option

~~~~
$ ./example.sh
VAL is empty.
~~~~

## Normal options

~~~~
$ ./example.sh -v -d -s foobar
use verbose mode.
use debug mode.
set VAL=foobar.
~~~~

## -abc style options

~~~~
$ ./example.sh -vd -s foobar
use verbose mode.
use debug mode.
set VAL=foobar.
~~~~

## Short and long options.

~~~~
$ ./example.sh -d --set foobar --verbose
use verbose mode.
use debug mode.
set VAL=foobar.
~~~~

## Error

~~~~
$ ./example.sh --badopt
example.sh: error - unrecognized option --badopt
~~~~

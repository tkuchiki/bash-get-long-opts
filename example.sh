#!/bin/bash

source get_long_opts

get_long_opts $(parse_options "${@}")

if [ $VERBOSE -eq 1 ] ; then
    echo "use verbose mode."
fi

if [ $DEBUG -eq 1 ] ; then
    echo "use debug mode."
fi

if [ "${VAL}" != "" ] ; then
    echo "set VAL=${VAL}."
else
    echo "VAL is empty."
fi

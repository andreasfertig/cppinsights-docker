#! /bin/sh

ulimit -t 10
ulimit -v $((2 * 1024 * 1024))
ulimit -m $((512 * 1024))

umask 0177

/usr/bin/insights /home/insights/insights.cpp -- -std=c++17

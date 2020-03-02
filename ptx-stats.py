#!/bin/env python
# -*- coding: utf-8 -*-
###############################################################################
# File: ptx-stats.py
###############################################################################
"""Tabulate PTX assembly instruction calls.
"""
from __future__ import (division, absolute_import, print_function)
#-----------------------------------------------------------------------------#
import re
import sys
from collections import defaultdict
###############################################################################

START_RE = re.compile(r'^\s*\{\s*$')
CMD_RE = re.compile(r'^\s*(\w+)\.')

def process(f):
    result = defaultdict(int)
    for line in f:
        if START_RE.match(line):
            break

    for line in f:
        match = CMD_RE.match(line)
        if match is not None:
            result[match.group(1)] += 1

    return dict(result)

def main():
    (_, filename) = sys.argv
    if filename == '-':
        instructions = process(sys.stdin)
    else:
        with open(filename, 'r') as f:
            instructions = process(f)

    for k in sorted(instructions):
        print("{:10s} {:4d}".format(k, instructions[k]))
    print("{:10s} {:4d}".format("TOTAL", sum(instructions.values())))

#-----------------------------------------------------------------------------#
if __name__ == '__main__':
    main()

###############################################################################
# end of ptx-stats.py
###############################################################################

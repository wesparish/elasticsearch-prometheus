#!/bin/bash

grep version setup.py | cut -d= -f2 | cut -d\' -f2

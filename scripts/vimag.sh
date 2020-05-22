#!/bin/bash

ARGS="$*"
vim $(ag $ARGS -l) -p +/$ARGS

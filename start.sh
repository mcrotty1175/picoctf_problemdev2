#!/bin/bash

set -e

socat tcp-listen:5555,reuseaddr,fork SYSTEM:"python3 /app/quantum_scrambler.py"

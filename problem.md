# Quantum Scrambler

- Namespace: mcrotty/ctfdev
- ID: Quantum Scrambler
- Type: custom
- Category: Reverse Engineering
- Points: 300
- Templatable: yes
- MaxUsers: 1

## Description

We invented a new cypher that uses "quantum entanglement" to encode the flag. Do
you have what it takes to decode it?


## Details

Connect to the program with netcat:

`$ nc {{server}} {{port}}`

The program's source code can be downloaded {{url_for("quantum_scrambler.py", "here")}}.

## Hints

- Run `eval` on the cypher to interpret it as a python object
- Print the outer list one object per line
- Feed in a known plaintext through the scrambler

## Solution Overview

- Feed a known plaintext through the scrambler
- Plaintext suggestion: [[c] for c in string.ascii_lowercase]
- Notice the pattern (First and last index of the inner lists are the only
characters that matter.

## Challenge Options

```yaml
cpus: 0.5
memory: 128m
pidslimit: 20
ulimits:
  - nofile=128:128
diskquota: 64m
init: true
```

## Learning Objective

Examining source code to identify functionality
Learn about weird aliasing in python


## Tags

- python
- cyphertext
- aliasing

## Attributes

- author: Michael Crotty
- organization: CMU ECE 18739 F24
- event: picoCTF Problem Dev 2

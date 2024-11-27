# Quantum Scrambler
CTF Problem by Michael Crotty (mcrotty)

## Overall Idea
The idea came from one of the "spicy recitations" in 15-112. One recitation we
talked about "Things That You Should Never Ever Do" (TTYSNED) features of python.
Fundamentally, they are all weird object aliasing with lists in python. 

TTYSNED Features:
1. Recursive Aliasing
2. Quantum Aliasing
3. Using += between lists and thing that can be converted to lists

I started with a combination of all 3 features, but it ended up being really
difficult to solve and I wanted to make sure it was solvable with a script.
I realized when printing a list, using eval on the output string will 
convert it into the list which makes scripting the answer easier. 

I made the solution only using "Quantum Aliasing" which makes the printed string
expands the length of the cypher extremely quickly. Again, it could have been
made a lot more annoying by doing more processing on the string which is less
reversible, but I kept it printing the lists for the ease of scripting.

WARNING: My solution uses eval on a string from the network
be careful if running it

## Solution Approach
Feed in a known plaintext and print the outermost list one object at a time.

## Build Instructions
Works with cmgr

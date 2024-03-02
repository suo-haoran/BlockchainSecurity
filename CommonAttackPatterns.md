# Common Attack Patterns

Examples in repo: https://github.com/Cyfrin/sc-exploits-minimized

## DoS Attack

Cause:
1. Unbounded `for` loop
    - Users can insert many elements in an array making the gas exceed the gas limit

2. An external call failing
    - Sending ether to a contract that doesn't accept it
    - Calling a function that does not exist
    - The external call execution runs out of gas
    - Third party contract reverts maliciously on purpose

How to detect DoS Attack:

- Ask yourself every time when you see a `for` loop
    - Is this iterable bounded to a certain size?
- Look out for external calls
    - Is there a way for this call to fail?
    - If yes, how does the revert affect the system?

## Reentrancy Attack

Cause: State variable is changed after an external call is made.

How to prevent (either or): 

1. Change state before an external call is made
2. Use a lock
3. Use openzeppelin's `nonReentrant` modifier

## Weak Randomness

Cause: Random number is generated using manipulatable or computable numbers.

Fix: Chainlink VRF, Commit Reveal Scheme

Real Attack: Meebits exploit

## Mishandling ETH

Very broad. Case study: [Sushi Swap](https://samczsun.com/two-rights-might-make-a-wrong/)

## Supply Chain Attack

Cause: Project using libraries that are vulnerable. Be sure to do your research of the library versions a project is using.

For example, openzeppelin has a security tab in their github page. We can see the security disclosures to make sure the libraries are safe.



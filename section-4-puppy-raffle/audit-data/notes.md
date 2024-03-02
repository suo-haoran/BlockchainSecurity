## Project Summary

This project is to mint a dog's NFT to a participants that is randomly selected from a pool of participants.

## Potential Problems from The Statement

1. Not Real Random Participant
2. Incorrect implementation of refund which leads to wallet being drained

## High

- Found a DoS


## Informational

- `PuppyRaffle::entranceFee` is immutable, and should be like `i_entranceFee` or `ENTRANCE_FEE`
- State variable should be prefixed with `s_`


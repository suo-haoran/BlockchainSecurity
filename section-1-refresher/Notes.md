# Notes

## Fuzz Testing

Fuzz Testing: Attempting to break your system by supplying random values as input.

- Stateless: Each time contract's state is refreshed
- Stateful: Contract state after executing functions is not refreshed

Invariant: Something in your system that shouldn't change.

### How to Do It

- Setup `Fuzz` in toml file
- Setup tests in test file e.g. `MyContract.t.sol`
- Run test using `forge test`


> Always do fuzz test to ensure security.

## Storage

Every global variable in the contract resides in the storage. To view storage for a specific contract, use

```sh
forge build
forge inspect <contract-name> storage
```

For more info, Read the docs: [Layout of State Variables in Storage](https://docs.soliditylang.org/en/v0.8.23/internals/layout_in_storage.html)

## Fallback & Receive

Solidity rejects payment by default, in order to do receive payment, we need to impl a receive/fallback function, using the decision tree below:

```
Ether sent to contract
        is msg.data empty?
              /      \
            yes       no
            /          \
        receive()?      fallback()
          /    \
        yes    no
        /       \
  receive()    fallback()
```

When there's no fallback or receive functions, we use `selfdestruct(addr);` to force eth into another address.

## Low Level Stuff

- `call` or `staticcall` can be used to call functions
- (Optional) Proxy: Check out [Sublesson](https://github.com/PatrickAlphaC/hardhat-upgrades-fcc/tree/main/contracts/sublesson)


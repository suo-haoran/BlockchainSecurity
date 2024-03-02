
## Static Analysis

Match code with known patterns to find bugs.

### Tooling
- Slither ([Wiki](https://github.com/crytic/slither/wiki))
- [Aderyn](https://github.com/Cyfrin/aderyn)
- Solidity Metrics

## How to Use Slither

I'm using conda environment to install slither, the name of the env is `audit`.

Go to the project dir

```sh
conda activate audit
slither .
```

It shows you errors it can find in the terminal.

```sh
sliter . --exclude-dependencies
```
to exclude libraries that the project is using

## How to Use Aderyn

Go to the project dir

```sh
aderyn .
```

It generates a report in `report.md`.



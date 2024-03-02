
[<img width="200" alt="get in touch with Consensys Diligence" src="https://user-images.githubusercontent.com/2865694/56826101-91dcf380-685b-11e9-937c-af49c2510aa0.png">](https://diligence.consensys.net)<br/>
<sup>
[[  🌐  ](https://diligence.consensys.net)  [  📩  ](mailto:diligence@consensys.net)  [  🔥  ](https://consensys.github.io/diligence/)]
</sup><br/><br/>



# Solidity Metrics for 'CLI'

## Table of contents

- [Scope](#t-scope)
    - [Source Units in Scope](#t-source-Units-in-Scope)
    - [Out of Scope](#t-out-of-scope)
        - [Excluded Source Units](#t-out-of-scope-excluded-source-units)
        - [Duplicate Source Units](#t-out-of-scope-duplicate-source-units)
        - [Doppelganger Contracts](#t-out-of-scope-doppelganger-contracts)
- [Report Overview](#t-report)
    - [Risk Summary](#t-risk)
    - [Source Lines](#t-source-lines)
    - [Inline Documentation](#t-inline-documentation)
    - [Components](#t-components)
    - [Exposed Functions](#t-exposed-functions)
    - [StateVariables](#t-statevariables)
    - [Capabilities](#t-capabilities)
    - [Dependencies](#t-package-imports)
    - [Totals](#t-totals)

## <span id=t-scope>Scope</span>

This section lists files that are in scope for the metrics report. 

- **Project:** `'CLI'`
- **Included Files:** 
    - ``
- **Excluded Paths:** 
    - ``
- **File Limit:** `undefined`
    - **Exclude File list Limit:** `undefined`

- **Workspace Repository:** `unknown` (`undefined`@`undefined`)

### <span id=t-source-Units-in-Scope>Source Units in Scope</span>

Source Units Analyzed: **`8`**<br>
Source Units in Scope: **`8`** (**100%**)

| Type | File   | Logic Contracts | Interfaces | Lines | nLines | nSLOC | Comment Lines | Complex. Score | Capabilities |
| ---- | ------ | --------------- | ---------- | ----- | ------ | ----- | ------------- | -------------- | ------------ | 
| 🔍 | 6-thunder-loan-audit/src/interfaces/IFlashLoanReceiver.sol | **** | 1 | 20 | 11 | 4 | 5 | 3 | **<abbr title='doppelganger(IFlashLoanReceiver)'>🔆</abbr>** |
| 🔍 | 6-thunder-loan-audit/src/interfaces/IPoolFactory.sol | **** | 1 | 6 | 5 | 3 | 1 | 3 | **<abbr title='doppelganger(IPoolFactory)'>🔆</abbr>** |
| 🔍 | 6-thunder-loan-audit/src/interfaces/IThunderLoan.sol | **** | 1 | 6 | 5 | 3 | 1 | 3 | **** |
| 🔍 | 6-thunder-loan-audit/src/interfaces/ITSwapPool.sol | **** | 1 | 6 | 5 | 3 | 1 | 3 | **<abbr title='doppelganger(ITSwapPool)'>🔆</abbr>** |
| 📝 | 6-thunder-loan-audit/src/protocol/AssetToken.sol | 1 | **** | 105 | 105 | 65 | 24 | 41 | **** |
| 📝 | 6-thunder-loan-audit/src/protocol/OracleUpgradeable.sol | 1 | **** | 31 | 31 | 23 | 1 | 18 | **** |
| 📝 | 6-thunder-loan-audit/src/protocol/ThunderLoan.sol | 1 | **** | 293 | 263 | 147 | 90 | 129 | **<abbr title='create/create2'>🌀</abbr>** |
| 📝 | 6-thunder-loan-audit/src/upgradedProtocol/ThunderLoanUpgraded.sol | 1 | **** | 288 | 258 | 143 | 90 | 127 | **<abbr title='create/create2'>🌀</abbr>** |
| 📝🔍 | **Totals** | **4** | **4** | **755**  | **683** | **391** | **213** | **327** | **<abbr title='create/create2'>🌀</abbr><abbr title='doppelganger'>🔆</abbr>** |

<sub>
Legend: <a onclick="toggleVisibility('table-legend', this)">[➕]</a>
<div id="table-legend" style="display:none">

<ul>
<li> <b>Lines</b>: total lines of the source unit </li>
<li> <b>nLines</b>: normalized lines of the source unit (e.g. normalizes functions spanning multiple lines) </li>
<li> <b>nSLOC</b>: normalized source lines of code (only source-code lines; no comments, no blank lines) </li>
<li> <b>Comment Lines</b>: lines containing single or block comments </li>
<li> <b>Complexity Score</b>: a custom complexity score derived from code statements that are known to introduce code complexity (branches, loops, calls, external interfaces, ...) </li>
</ul>

</div>
</sub>


#### <span id=t-out-of-scope>Out of Scope</span>

##### <span id=t-out-of-scope-excluded-source-units>Excluded Source Units</span>

Source Units Excluded: **`0`**

<a onclick="toggleVisibility('excluded-files', this)">[➕]</a>
<div id="excluded-files" style="display:none">
| File   |
| ------ |
| None |

</div>


##### <span id=t-out-of-scope-duplicate-source-units>Duplicate Source Units</span>

Duplicate Source Units Excluded: **`0`** 

<a onclick="toggleVisibility('duplicate-files', this)">[➕]</a>
<div id="duplicate-files" style="display:none">
| File   |
| ------ |
| None |

</div>

##### <span id=t-out-of-scope-doppelganger-contracts>Doppelganger Contracts</span>

Doppelganger Contracts: **`3`** 

<a onclick="toggleVisibility('doppelganger-contracts', this)">[➕]</a>
<div id="doppelganger-contracts" style="display:none">
| File   | Contract | Doppelganger | 
| ------ | -------- | ------------ |
| 6-thunder-loan-audit/src/interfaces/IFlashLoanReceiver.sol | IFlashLoanReceiver | (fuzzy) [0](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.1.0/contracts/interfaces/IERC3156Upgradeable.sol), [1](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.1.0-rc.0/contracts/interfaces/IERC3156Upgradeable.sol), [2](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.2.0/contracts/interfaces/IERC3156Upgradeable.sol) |
| 6-thunder-loan-audit/src/interfaces/IPoolFactory.sol | IPoolFactory | (fuzzy) [0](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.5/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [1](https://github.com/smartcontractkit/chainlink/blob/upgrade/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [2](https://github.com/smartcontractkit/chainlink/blob/v.0.8.12/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [3](https://github.com/smartcontractkit/chainlink/blob/v0.8.12/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [4](https://github.com/smartcontractkit/chainlink/blob/v0.8.13/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [5](https://github.com/smartcontractkit/chainlink/blob/v0.8.14/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [6](https://github.com/smartcontractkit/chainlink/blob/v0.8.15/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [7](https://github.com/smartcontractkit/chainlink/blob/v0.8.16/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [8](https://github.com/smartcontractkit/chainlink/blob/v0.8.17/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [9](https://github.com/smartcontractkit/chainlink/blob/v0.8.18/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [10](https://github.com/smartcontractkit/chainlink/blob/v0.9.0/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [11](https://github.com/smartcontractkit/chainlink/blob/v0.9.2/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [12](https://github.com/smartcontractkit/chainlink/blob/v0.9.3/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [13](https://github.com/smartcontractkit/chainlink/blob/v0.9.4/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [14](https://github.com/smartcontractkit/chainlink/blob/v0.9.5/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [15](https://github.com/smartcontractkit/chainlink/blob/v0.9.6/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [16](https://github.com/smartcontractkit/chainlink/blob/v0.9.7/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [17](https://github.com/smartcontractkit/chainlink/blob/v0.9.8/evm-contracts/src/v0.6/interfaces/BlockHashStoreInterface.sol), [18](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.0.0/contracts/introspection/IERC165.sol), [19](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.0.1/contracts/introspection/IERC165.sol), [20](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.0.2/contracts/introspection/IERC165.sol), [21](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.1.2/contracts/introspection/IERC165.sol), [22](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.1.3/contracts/introspection/IERC165.sol), [23](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.2.1/contracts/introspection/IERC165.sol), [24](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.2.2/contracts/introspection/IERC165.sol), [25](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.2.3/contracts/introspection/IERC165.sol), [26](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v2.5.0/contracts/introspection/IERC165.sol), [27](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v3.2.0/contracts/introspection/IERC165Upgradeable.sol), [28](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v3.2.2-solc-0.7/contracts/introspection/IERC165Upgradeable.sol), [29](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v3.3.0/contracts/introspection/IERC165Upgradeable.sol), [30](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v3.3.0-solc-0.7/contracts/introspection/IERC165Upgradeable.sol), [31](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v3.4.0/contracts/introspection/IERC165Upgradeable.sol), [32](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v3.4.0-solc-0.7/contracts/introspection/IERC165Upgradeable.sol), [33](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.0.0/contracts/utils/introspection/IERC165Upgradeable.sol), [34](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.0.0-beta.0/contracts/utils/introspection/IERC165Upgradeable.sol), [35](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.0.0-rc.0/contracts/utils/introspection/IERC165Upgradeable.sol), [36](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.1.0/contracts/utils/introspection/IERC165Upgradeable.sol), [37](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.1.0-rc.0/contracts/utils/introspection/IERC165Upgradeable.sol), [38](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.2.0/contracts/utils/introspection/IERC165Upgradeable.sol), [39](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.0.0/contracts/introspection/IERC165.sol), [40](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.0.0-rc.1/contracts/introspection/IERC165.sol), [41](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.0.0-rc.2/contracts/introspection/IERC165.sol), [42](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.0.0-rc.3/contracts/introspection/IERC165.sol), [43](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.0.0-rc.4/contracts/introspection/IERC165.sol), [44](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.0.1/contracts/introspection/IERC165.sol), [45](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.1.0-rc.1/contracts/introspection/IERC165.sol), [46](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.1.0-rc.2/contracts/introspection/IERC165.sol), [47](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.1.1/contracts/introspection/IERC165.sol), [48](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.1.2/contracts/introspection/IERC165.sol), [49](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.1.3/contracts/introspection/IERC165.sol), [50](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.2.0/contracts/introspection/IERC165.sol), [51](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.2.0-rc.1/contracts/introspection/IERC165.sol), [52](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/introspection/IERC165.sol), [53](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0-rc.0/contracts/introspection/IERC165.sol), [54](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0-rc.1/contracts/introspection/IERC165.sol), [55](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0-rc.2/contracts/introspection/IERC165.sol), [56](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0-rc.3/contracts/introspection/IERC165.sol), [57](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.4.0/contracts/introspection/IERC165.sol), [58](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.4.0-beta.0/contracts/introspection/IERC165.sol), [59](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.4.0-beta.1/contracts/introspection/IERC165.sol), [60](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.4.0-beta.2/contracts/introspection/IERC165.sol), [61](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/introspection/IERC165.sol), [62](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0-rc.0/contracts/introspection/IERC165.sol), [63](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/introspection/IERC165.sol), [64](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/introspection/IERC165.sol), [65](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0-beta.0/contracts/introspection/IERC165.sol), [66](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0-rc.0/contracts/introspection/IERC165.sol), [67](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0-rc.1/contracts/introspection/IERC165.sol), [68](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.1/contracts/introspection/IERC165.sol), [69](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.2/contracts/introspection/IERC165.sol), [70](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/introspection/IERC165.sol), [71](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0-rc.0/contracts/introspection/IERC165.sol), [72](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.2.0/contracts/introspection/IERC165.sol), [73](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.2.0-rc.0/contracts/introspection/IERC165.sol), [74](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.2.1-solc-0.7/contracts/introspection/IERC165.sol), [75](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.2.2-solc-0.7/contracts/introspection/IERC165.sol) |
| 6-thunder-loan-audit/src/interfaces/ITSwapPool.sol | ITSwapPool | (fuzzy) [0](https://github.com/smartcontractkit/chainlink/blob/0.8.0/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [1](https://github.com/smartcontractkit/chainlink/blob/0.8.0/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [2](https://github.com/smartcontractkit/chainlink/blob/0.8.0/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [3](https://github.com/smartcontractkit/chainlink/blob/chores-explorer-tags-for-dockerhub/evm/contracts/interfaces/PointerInterface.sol), [4](https://github.com/smartcontractkit/chainlink/blob/chores-explorer-tags-for-dockerhub/evm/v0.5/contracts/interfaces/PointerInterface.sol), [5](https://github.com/smartcontractkit/chainlink/blob/chores-v0.0.1/evm/contracts/interfaces/PointerInterface.sol), [6](https://github.com/smartcontractkit/chainlink/blob/chores-v0.0.1/evm/v0.5/contracts/interfaces/PointerInterface.sol), [7](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.0.1/evm/contracts/interfaces/PointerInterface.sol), [8](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.0.1/evm/v0.5/contracts/interfaces/PointerInterface.sol), [9](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.7.0/evm/contracts/interfaces/PointerInterface.sol), [10](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.7.0/evm/v0.5/contracts/interfaces/PointerInterface.sol), [11](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.0/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [12](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.0/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [13](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.0/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [14](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.1/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [15](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.1/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [16](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.1/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [17](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.2/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [18](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.2/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [19](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.2/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [20](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.3/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [21](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.3/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [22](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.3/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [23](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.4/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [24](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.4/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [25](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.4/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [26](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.5/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [27](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.5/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [28](https://github.com/smartcontractkit/chainlink/blob/explorer-v0.8.5/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [29](https://github.com/smartcontractkit/chainlink/blob/upgrade/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [30](https://github.com/smartcontractkit/chainlink/blob/upgrade/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [31](https://github.com/smartcontractkit/chainlink/blob/upgrade/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [32](https://github.com/smartcontractkit/chainlink/blob/upgrade/evm-contracts/src/v0.7/interfaces/PointerInterface.sol), [33](https://github.com/smartcontractkit/chainlink/blob/v.0.8.12/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [34](https://github.com/smartcontractkit/chainlink/blob/v.0.8.12/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [35](https://github.com/smartcontractkit/chainlink/blob/v.0.8.12/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [36](https://github.com/smartcontractkit/chainlink/blob/v0.6.0/evm/contracts/interfaces/PointerInterface.sol), [37](https://github.com/smartcontractkit/chainlink/blob/v0.6.0/examples/testnet/contracts/Aggregator.sol), [38](https://github.com/smartcontractkit/chainlink/blob/v0.6.09/evm/contracts/interfaces/PointerInterface.sol), [39](https://github.com/smartcontractkit/chainlink/blob/v0.6.09/evm/v0.5/contracts/interfaces/PointerInterface.sol), [40](https://github.com/smartcontractkit/chainlink/blob/v0.6.1/evm/contracts/interfaces/PointerInterface.sol), [41](https://github.com/smartcontractkit/chainlink/blob/v0.6.1/examples/testnet/contracts/Aggregator.sol), [42](https://github.com/smartcontractkit/chainlink/blob/v0.6.10/evm/contracts/interfaces/PointerInterface.sol), [43](https://github.com/smartcontractkit/chainlink/blob/v0.6.10/evm/v0.5/contracts/interfaces/PointerInterface.sol), [44](https://github.com/smartcontractkit/chainlink/blob/v0.6.2/evm/contracts/interfaces/PointerInterface.sol), [45](https://github.com/smartcontractkit/chainlink/blob/v0.6.2/examples/testnet/contracts/Aggregator.sol), [46](https://github.com/smartcontractkit/chainlink/blob/v0.6.3/evm/contracts/interfaces/PointerInterface.sol), [47](https://github.com/smartcontractkit/chainlink/blob/v0.6.3/examples/testnet/contracts/Aggregator.sol), [48](https://github.com/smartcontractkit/chainlink/blob/v0.6.4/evm/contracts/interfaces/PointerInterface.sol), [49](https://github.com/smartcontractkit/chainlink/blob/v0.6.4/examples/testnet/contracts/Aggregator.sol), [50](https://github.com/smartcontractkit/chainlink/blob/v0.6.6/evm/contracts/interfaces/PointerInterface.sol), [51](https://github.com/smartcontractkit/chainlink/blob/v0.6.6/evm/v0.5/contracts/interfaces/PointerInterface.sol), [52](https://github.com/smartcontractkit/chainlink/blob/v0.6.7/evm/contracts/interfaces/PointerInterface.sol), [53](https://github.com/smartcontractkit/chainlink/blob/v0.6.7/evm/v0.5/contracts/interfaces/PointerInterface.sol), [54](https://github.com/smartcontractkit/chainlink/blob/v0.6.8/evm/contracts/interfaces/PointerInterface.sol), [55](https://github.com/smartcontractkit/chainlink/blob/v0.6.8/evm/v0.5/contracts/interfaces/PointerInterface.sol), [56](https://github.com/smartcontractkit/chainlink/blob/v0.6.9/evm/contracts/interfaces/PointerInterface.sol), [57](https://github.com/smartcontractkit/chainlink/blob/v0.6.9/evm/v0.5/contracts/interfaces/PointerInterface.sol), [58](https://github.com/smartcontractkit/chainlink/blob/v0.7.0/evm/contracts/interfaces/PointerInterface.sol), [59](https://github.com/smartcontractkit/chainlink/blob/v0.7.0/evm/v0.5/contracts/interfaces/PointerInterface.sol), [60](https://github.com/smartcontractkit/chainlink/blob/v0.7.1/evm/contracts/interfaces/PointerInterface.sol), [61](https://github.com/smartcontractkit/chainlink/blob/v0.7.1/evm/v0.5/contracts/interfaces/PointerInterface.sol), [62](https://github.com/smartcontractkit/chainlink/blob/v0.7.2/evm/contracts/interfaces/PointerInterface.sol), [63](https://github.com/smartcontractkit/chainlink/blob/v0.7.2/evm/v0.5/contracts/interfaces/PointerInterface.sol), [64](https://github.com/smartcontractkit/chainlink/blob/v0.7.3/evm/contracts/interfaces/PointerInterface.sol), [65](https://github.com/smartcontractkit/chainlink/blob/v0.7.3/evm/v0.5/contracts/interfaces/PointerInterface.sol), [66](https://github.com/smartcontractkit/chainlink/blob/v0.7.4/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [67](https://github.com/smartcontractkit/chainlink/blob/v0.7.4/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [68](https://github.com/smartcontractkit/chainlink/blob/v0.7.4/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [69](https://github.com/smartcontractkit/chainlink/blob/v0.7.5/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [70](https://github.com/smartcontractkit/chainlink/blob/v0.7.5/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [71](https://github.com/smartcontractkit/chainlink/blob/v0.7.5/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [72](https://github.com/smartcontractkit/chainlink/blob/v0.7.6/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [73](https://github.com/smartcontractkit/chainlink/blob/v0.7.6/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [74](https://github.com/smartcontractkit/chainlink/blob/v0.7.6/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [75](https://github.com/smartcontractkit/chainlink/blob/v0.7.7/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [76](https://github.com/smartcontractkit/chainlink/blob/v0.7.7/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [77](https://github.com/smartcontractkit/chainlink/blob/v0.7.7/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [78](https://github.com/smartcontractkit/chainlink/blob/v0.7.8/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [79](https://github.com/smartcontractkit/chainlink/blob/v0.7.8/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [80](https://github.com/smartcontractkit/chainlink/blob/v0.7.8/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [81](https://github.com/smartcontractkit/chainlink/blob/v0.8.0/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [82](https://github.com/smartcontractkit/chainlink/blob/v0.8.0/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [83](https://github.com/smartcontractkit/chainlink/blob/v0.8.0/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [84](https://github.com/smartcontractkit/chainlink/blob/v0.8.1/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [85](https://github.com/smartcontractkit/chainlink/blob/v0.8.1/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [86](https://github.com/smartcontractkit/chainlink/blob/v0.8.1/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [87](https://github.com/smartcontractkit/chainlink/blob/v0.8.10/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [88](https://github.com/smartcontractkit/chainlink/blob/v0.8.10/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [89](https://github.com/smartcontractkit/chainlink/blob/v0.8.10/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [90](https://github.com/smartcontractkit/chainlink/blob/v0.8.11/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [91](https://github.com/smartcontractkit/chainlink/blob/v0.8.11/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [92](https://github.com/smartcontractkit/chainlink/blob/v0.8.11/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [93](https://github.com/smartcontractkit/chainlink/blob/v0.8.12/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [94](https://github.com/smartcontractkit/chainlink/blob/v0.8.12/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [95](https://github.com/smartcontractkit/chainlink/blob/v0.8.12/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [96](https://github.com/smartcontractkit/chainlink/blob/v0.8.13/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [97](https://github.com/smartcontractkit/chainlink/blob/v0.8.13/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [98](https://github.com/smartcontractkit/chainlink/blob/v0.8.13/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [99](https://github.com/smartcontractkit/chainlink/blob/v0.8.14/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [100](https://github.com/smartcontractkit/chainlink/blob/v0.8.14/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [101](https://github.com/smartcontractkit/chainlink/blob/v0.8.14/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [102](https://github.com/smartcontractkit/chainlink/blob/v0.8.15/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [103](https://github.com/smartcontractkit/chainlink/blob/v0.8.15/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [104](https://github.com/smartcontractkit/chainlink/blob/v0.8.15/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [105](https://github.com/smartcontractkit/chainlink/blob/v0.8.16/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [106](https://github.com/smartcontractkit/chainlink/blob/v0.8.16/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [107](https://github.com/smartcontractkit/chainlink/blob/v0.8.16/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [108](https://github.com/smartcontractkit/chainlink/blob/v0.8.17/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [109](https://github.com/smartcontractkit/chainlink/blob/v0.8.17/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [110](https://github.com/smartcontractkit/chainlink/blob/v0.8.17/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [111](https://github.com/smartcontractkit/chainlink/blob/v0.8.18/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [112](https://github.com/smartcontractkit/chainlink/blob/v0.8.18/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [113](https://github.com/smartcontractkit/chainlink/blob/v0.8.18/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [114](https://github.com/smartcontractkit/chainlink/blob/v0.8.2/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [115](https://github.com/smartcontractkit/chainlink/blob/v0.8.2/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [116](https://github.com/smartcontractkit/chainlink/blob/v0.8.2/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [117](https://github.com/smartcontractkit/chainlink/blob/v0.8.3/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [118](https://github.com/smartcontractkit/chainlink/blob/v0.8.3/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [119](https://github.com/smartcontractkit/chainlink/blob/v0.8.3/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [120](https://github.com/smartcontractkit/chainlink/blob/v0.8.4/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [121](https://github.com/smartcontractkit/chainlink/blob/v0.8.4/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [122](https://github.com/smartcontractkit/chainlink/blob/v0.8.4/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [123](https://github.com/smartcontractkit/chainlink/blob/v0.8.5/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [124](https://github.com/smartcontractkit/chainlink/blob/v0.8.5/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [125](https://github.com/smartcontractkit/chainlink/blob/v0.8.5/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [126](https://github.com/smartcontractkit/chainlink/blob/v0.8.6/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [127](https://github.com/smartcontractkit/chainlink/blob/v0.8.6/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [128](https://github.com/smartcontractkit/chainlink/blob/v0.8.6/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [129](https://github.com/smartcontractkit/chainlink/blob/v0.8.7/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [130](https://github.com/smartcontractkit/chainlink/blob/v0.8.7/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [131](https://github.com/smartcontractkit/chainlink/blob/v0.8.7/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [132](https://github.com/smartcontractkit/chainlink/blob/v0.8.8/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [133](https://github.com/smartcontractkit/chainlink/blob/v0.8.8/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [134](https://github.com/smartcontractkit/chainlink/blob/v0.8.8/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [135](https://github.com/smartcontractkit/chainlink/blob/v0.8.9/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [136](https://github.com/smartcontractkit/chainlink/blob/v0.8.9/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [137](https://github.com/smartcontractkit/chainlink/blob/v0.8.9/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [138](https://github.com/smartcontractkit/chainlink/blob/v0.9.0/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [139](https://github.com/smartcontractkit/chainlink/blob/v0.9.0/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [140](https://github.com/smartcontractkit/chainlink/blob/v0.9.0/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [141](https://github.com/smartcontractkit/chainlink/blob/v0.9.2/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [142](https://github.com/smartcontractkit/chainlink/blob/v0.9.2/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [143](https://github.com/smartcontractkit/chainlink/blob/v0.9.2/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [144](https://github.com/smartcontractkit/chainlink/blob/v0.9.3/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [145](https://github.com/smartcontractkit/chainlink/blob/v0.9.3/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [146](https://github.com/smartcontractkit/chainlink/blob/v0.9.3/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [147](https://github.com/smartcontractkit/chainlink/blob/v0.9.4/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [148](https://github.com/smartcontractkit/chainlink/blob/v0.9.4/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [149](https://github.com/smartcontractkit/chainlink/blob/v0.9.4/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [150](https://github.com/smartcontractkit/chainlink/blob/v0.9.5/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [151](https://github.com/smartcontractkit/chainlink/blob/v0.9.5/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [152](https://github.com/smartcontractkit/chainlink/blob/v0.9.5/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [153](https://github.com/smartcontractkit/chainlink/blob/v0.9.6/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [154](https://github.com/smartcontractkit/chainlink/blob/v0.9.6/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [155](https://github.com/smartcontractkit/chainlink/blob/v0.9.6/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [156](https://github.com/smartcontractkit/chainlink/blob/v0.9.6/evm-contracts/src/v0.7/interfaces/PointerInterface.sol), [157](https://github.com/smartcontractkit/chainlink/blob/v0.9.7/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [158](https://github.com/smartcontractkit/chainlink/blob/v0.9.7/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [159](https://github.com/smartcontractkit/chainlink/blob/v0.9.7/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [160](https://github.com/smartcontractkit/chainlink/blob/v0.9.7/evm-contracts/src/v0.7/interfaces/PointerInterface.sol), [161](https://github.com/smartcontractkit/chainlink/blob/v0.9.8/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [162](https://github.com/smartcontractkit/chainlink/blob/v0.9.8/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [163](https://github.com/smartcontractkit/chainlink/blob/v0.9.8/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [164](https://github.com/smartcontractkit/chainlink/blob/v0.9.8/evm-contracts/src/v0.7/interfaces/PointerInterface.sol), [165](https://github.com/smartcontractkit/chainlink/blob/vtest-2020-03-03/evm-contracts/src/v0.4/interfaces/PointerInterface.sol), [166](https://github.com/smartcontractkit/chainlink/blob/vtest-2020-03-03/evm-contracts/src/v0.5/interfaces/PointerInterface.sol), [167](https://github.com/smartcontractkit/chainlink/blob/vtest-2020-03-03/evm-contracts/src/v0.6/interfaces/PointerInterface.sol), [168](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.1.0/contracts/proxy/beacon/IBeaconUpgradeable.sol), [169](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.1.0-rc.0/contracts/proxy/beacon/IBeaconUpgradeable.sol), [170](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.2.0/contracts/proxy/beacon/IBeaconUpgradeable.sol) |

</div>


## <span id=t-report>Report</span>

### Overview

The analysis finished with **`0`** errors and **`0`** duplicate files.





#### <span id=t-risk>Risk</span>

<div class="wrapper" style="max-width: 512px; margin: auto">
			<canvas id="chart-risk-summary"></canvas>
</div>

#### <span id=t-source-lines>Source Lines (sloc vs. nsloc)</span>

<div class="wrapper" style="max-width: 512px; margin: auto">
    <canvas id="chart-nsloc-total"></canvas>
</div>

#### <span id=t-inline-documentation>Inline Documentation</span>

- **Comment-to-Source Ratio:** On average there are`2.16` code lines per comment (lower=better).
- **ToDo's:** `0` 

#### <span id=t-components>Components</span>

| 📝Contracts   | 📚Libraries | 🔍Interfaces | 🎨Abstract |
| ------------- | ----------- | ------------ | ---------- |
| 4 | 0  | 4  | 0 |

#### <span id=t-exposed-functions>Exposed Functions</span>

This section lists functions that are explicitly declared public or payable. Please note that getter methods for public stateVars are not included.  

| 🌐Public   | 💰Payable |
| ---------- | --------- |
| 38 | 0  | 

| External   | Internal | Private | Pure | View |
| ---------- | -------- | ------- | ---- | ---- |
| 27 | 31  | 0 | 0 | 18 |

#### <span id=t-statevariables>StateVariables</span>

| Total      | 🌐Public  |
| ---------- | --------- |
| 14  | 4 |

#### <span id=t-capabilities>Capabilities</span>

| Solidity Versions observed | 🧪 Experimental Features | 💰 Can Receive Funds | 🖥 Uses Assembly | 💣 Has Destroyable Contracts | 
| -------------------------- | ------------------------ | -------------------- | ---------------- | ---------------------------- |
| `0.8.20` |  | **** | **** | **** | 

| 📤 Transfers ETH | ⚡ Low-Level Calls | 👥 DelegateCall | 🧮 Uses Hash Functions | 🔖 ECRecover | 🌀 New/Create/Create2 |
| ---------------- | ----------------- | --------------- | ---------------------- | ------------ | --------------------- |
| **** | **** | **** | **** | **** | `yes`<br>→ `NewContract:AssetToken` | 

| ♻️ TryCatch | Σ Unchecked |
| ---------- | ----------- |
| **** | **** |

#### <span id=t-package-imports>Dependencies / External Imports</span>

| Dependency / Import Path | Count  | 
| ------------------------ | ------ |
| @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol | 2 |
| @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol | 3 |
| @openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol | 2 |
| @openzeppelin/contracts/token/ERC20/ERC20.sol | 1 |
| @openzeppelin/contracts/token/ERC20/IERC20.sol | 3 |
| @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol | 2 |
| @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol | 3 |
| @openzeppelin/contracts/utils/Address.sol | 2 |

#### <span id=t-totals>Totals</span>

##### Summary

<div class="wrapper" style="max-width: 90%; margin: auto">
    <canvas id="chart-num-bar"></canvas>
</div>

##### AST Node Statistics

###### Function Calls

<div class="wrapper" style="max-width: 90%; margin: auto">
    <canvas id="chart-num-bar-ast-funccalls"></canvas>
</div>

###### Assembly Calls

<div class="wrapper" style="max-width: 90%; margin: auto">
    <canvas id="chart-num-bar-ast-asmcalls"></canvas>
</div>

###### AST Total

<div class="wrapper" style="max-width: 90%; margin: auto">
    <canvas id="chart-num-bar-ast"></canvas>
</div>

##### Inheritance Graph

<a onclick="toggleVisibility('surya-inherit', this)">[➕]</a>
<div id="surya-inherit" style="display:none">
<div class="wrapper" style="max-width: 512px; margin: auto">
    <div id="surya-inheritance" style="text-align: center;"></div> 
</div>
</div>

##### CallGraph

<a onclick="toggleVisibility('surya-call', this)">[➕]</a>
<div id="surya-call" style="display:none">
<div class="wrapper" style="max-width: 512px; margin: auto">
    <div id="surya-callgraph" style="text-align: center;"></div>
</div>
</div>

###### Contract Summary

<a onclick="toggleVisibility('surya-mdreport', this)">[➕]</a>
<div id="surya-mdreport" style="display:none">
 Sūrya's Description Report

 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| 6-thunder-loan-audit/src/interfaces/IFlashLoanReceiver.sol | [object Promise] |
| 6-thunder-loan-audit/src/interfaces/IPoolFactory.sol | [object Promise] |
| 6-thunder-loan-audit/src/interfaces/IThunderLoan.sol | [object Promise] |
| 6-thunder-loan-audit/src/interfaces/ITSwapPool.sol | [object Promise] |
| 6-thunder-loan-audit/src/protocol/AssetToken.sol | [object Promise] |
| 6-thunder-loan-audit/src/protocol/OracleUpgradeable.sol | [object Promise] |
| 6-thunder-loan-audit/src/protocol/ThunderLoan.sol | [object Promise] |
| 6-thunder-loan-audit/src/upgradedProtocol/ThunderLoanUpgraded.sol | [object Promise] |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **IFlashLoanReceiver** | Interface |  |||
| └ | executeOperation | External ❗️ | 🛑  |NO❗️ |
||||||
| **IPoolFactory** | Interface |  |||
| └ | getPool | External ❗️ |   |NO❗️ |
||||||
| **IThunderLoan** | Interface |  |||
| └ | repay | External ❗️ | 🛑  |NO❗️ |
||||||
| **ITSwapPool** | Interface |  |||
| └ | getPriceOfOnePoolTokenInWeth | External ❗️ |   |NO❗️ |
||||||
| **AssetToken** | Implementation | ERC20 |||
| └ | <Constructor> | Public ❗️ | 🛑  | ERC20 revertIfZeroAddress revertIfZeroAddress |
| └ | mint | External ❗️ | 🛑  | onlyThunderLoan |
| └ | burn | External ❗️ | 🛑  | onlyThunderLoan |
| └ | transferUnderlyingTo | External ❗️ | 🛑  | onlyThunderLoan |
| └ | updateExchangeRate | External ❗️ | 🛑  | onlyThunderLoan |
| └ | getExchangeRate | External ❗️ |   |NO❗️ |
| └ | getUnderlying | External ❗️ |   |NO❗️ |
||||||
| **OracleUpgradeable** | Implementation | Initializable |||
| └ | __Oracle_init | Internal 🔒 | 🛑  | onlyInitializing |
| └ | __Oracle_init_unchained | Internal 🔒 | 🛑  | onlyInitializing |
| └ | getPriceInWeth | Public ❗️ |   |NO❗️ |
| └ | getPrice | External ❗️ |   |NO❗️ |
| └ | getPoolFactoryAddress | External ❗️ |   |NO❗️ |
||||||
| **ThunderLoan** | Implementation | Initializable, OwnableUpgradeable, UUPSUpgradeable, OracleUpgradeable |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | initialize | External ❗️ | 🛑  | initializer |
| └ | deposit | External ❗️ | 🛑  | revertIfZero revertIfNotAllowedToken |
| └ | redeem | External ❗️ | 🛑  | revertIfZero revertIfNotAllowedToken |
| └ | flashloan | External ❗️ | 🛑  | revertIfZero revertIfNotAllowedToken |
| └ | repay | Public ❗️ | 🛑  |NO❗️ |
| └ | setAllowedToken | External ❗️ | 🛑  | onlyOwner |
| └ | getCalculatedFee | Public ❗️ |   |NO❗️ |
| └ | updateFlashLoanFee | External ❗️ | 🛑  | onlyOwner |
| └ | isAllowedToken | Public ❗️ |   |NO❗️ |
| └ | getAssetFromToken | Public ❗️ |   |NO❗️ |
| └ | isCurrentlyFlashLoaning | Public ❗️ |   |NO❗️ |
| └ | getFee | External ❗️ |   |NO❗️ |
| └ | getFeePrecision | External ❗️ |   |NO❗️ |
| └ | _authorizeUpgrade | Internal 🔒 | 🛑  | onlyOwner |
||||||
| **ThunderLoanUpgraded** | Implementation | Initializable, OwnableUpgradeable, UUPSUpgradeable, OracleUpgradeable |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | initialize | External ❗️ | 🛑  | initializer |
| └ | deposit | External ❗️ | 🛑  | revertIfZero revertIfNotAllowedToken |
| └ | redeem | External ❗️ | 🛑  | revertIfZero revertIfNotAllowedToken |
| └ | flashloan | External ❗️ | 🛑  | revertIfZero revertIfNotAllowedToken |
| └ | repay | Public ❗️ | 🛑  |NO❗️ |
| └ | setAllowedToken | External ❗️ | 🛑  | onlyOwner |
| └ | getCalculatedFee | Public ❗️ |   |NO❗️ |
| └ | updateFlashLoanFee | External ❗️ | 🛑  | onlyOwner |
| └ | isAllowedToken | Public ❗️ |   |NO❗️ |
| └ | getAssetFromToken | Public ❗️ |   |NO❗️ |
| └ | isCurrentlyFlashLoaning | Public ❗️ |   |NO❗️ |
| └ | getFee | External ❗️ |   |NO❗️ |
| └ | _authorizeUpgrade | Internal 🔒 | 🛑  | onlyOwner |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |
 

</div>
____
<sub>
Thinking about smart contract security? We can provide training, ongoing advice, and smart contract auditing. [Contact us](https://diligence.consensys.net/contact/).
</sub>



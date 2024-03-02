**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [arbitrary-send-erc20](#arbitrary-send-erc20) (1 results) (High)
 - [arbitrary-send-eth](#arbitrary-send-eth) (1 results) (High)
 - [unused-return](#unused-return) (1 results) (Medium)
 - [missing-zero-check](#missing-zero-check) (1 results) (Low)
 - [reentrancy-events](#reentrancy-events) (1 results) (Low)
 - [assembly](#assembly) (1 results) (Informational)
 - [pragma](#pragma) (1 results) (Informational)
 - [solc-version](#solc-version) (5 results) (Informational)
 - [low-level-calls](#low-level-calls) (1 results) (Informational)
 - [constable-states](#constable-states) (1 results) (Optimization)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## arbitrary-send-erc20
Impact: High
Confidence: High
 - [ ] ID-0
[L1BossBridge.depositTokensToL2(address,address,uint256)](src/L1BossBridge.sol#L70-L78) uses arbitrary from in transferFrom: [token.safeTransferFrom(from,address(vault),amount)](src/L1BossBridge.sol#L74)

src/L1BossBridge.sol#L70-L78


## arbitrary-send-eth
Impact: High
Confidence: Medium
 - [ ] ID-1
[L1BossBridge.sendToL1(uint8,bytes32,bytes32,bytes)](src/L1BossBridge.sol#L112-L125) sends eth to arbitrary user
	Dangerous calls:
	- [(success) = target.call{value: value}(data)](src/L1BossBridge.sol#L121)

src/L1BossBridge.sol#L112-L125


## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-2
[L1Vault.approveTo(address,uint256)](src/L1Vault.sol#L19-L21) ignores return value by [token.approve(target,amount)](src/L1Vault.sol#L20)

src/L1Vault.sol#L19-L21


## missing-zero-check
Impact: Low
Confidence: Medium
 - [ ] ID-3
[L1BossBridge.sendToL1(uint8,bytes32,bytes32,bytes).target](src/L1BossBridge.sol#L119) lacks a zero-check on :
		- [(success) = target.call{value: value}(data)](src/L1BossBridge.sol#L121)

src/L1BossBridge.sol#L119


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-4
Reentrancy in [L1BossBridge.depositTokensToL2(address,address,uint256)](src/L1BossBridge.sol#L70-L78):
	External calls:
	- [token.safeTransferFrom(from,address(vault),amount)](src/L1BossBridge.sol#L74)
	Event emitted after the call(s):
	- [Deposit(from,l2Recipient,amount)](src/L1BossBridge.sol#L77)

src/L1BossBridge.sol#L70-L78


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-5
[TokenFactory.deployToken(string,bytes)](src/TokenFactory.sol#L23-L29) uses assembly
	- [INLINE ASM](src/TokenFactory.sol#L24-L26)

src/TokenFactory.sol#L23-L29


## pragma
Impact: Informational
Confidence: High
 - [ ] ID-6
Different versions of Solidity are used:
	- Version used: ['0.8.20', '^0.8.20']
	- [0.8.20](src/L1BossBridge.sol#L15)
	- [0.8.20](src/L1Token.sol#L2)
	- [0.8.20](src/L1Vault.sol#L2)
	- [0.8.20](src/TokenFactory.sol#L2)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/access/Ownable.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol#L3)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/Address.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/Context.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/Pausable.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/Strings.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/cryptography/MessageHashUtils.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L4)
	- [^0.8.20](lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol#L4)

src/L1BossBridge.sol#L15


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-7
Pragma version[0.8.20](src/L1Vault.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/L1Vault.sol#L2


 - [ ] ID-8
Pragma version[0.8.20](src/TokenFactory.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/TokenFactory.sol#L2


 - [ ] ID-9
solc-0.8.20 is not recommended for deployment

 - [ ] ID-10
Pragma version[0.8.20](src/L1Token.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/L1Token.sol#L2


 - [ ] ID-11
Pragma version[0.8.20](src/L1BossBridge.sol#L15) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/L1BossBridge.sol#L15


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-12
Low level call in [L1BossBridge.sendToL1(uint8,bytes32,bytes32,bytes)](src/L1BossBridge.sol#L112-L125):
	- [(success) = target.call{value: value}(data)](src/L1BossBridge.sol#L121)

src/L1BossBridge.sol#L112-L125


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-13
[L1BossBridge.DEPOSIT_LIMIT](src/L1BossBridge.sol#L30) should be constant 

src/L1BossBridge.sol#L30


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-14
[L1Vault.token](src/L1Vault.sol#L13) should be immutable 

src/L1Vault.sol#L13



slither . --config-file slither.config.json --checklist 
**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [unused-return](#unused-return) (1 results) (Medium)
 - [events-maths](#events-maths) (1 results) (Low)
 - [reentrancy-benign](#reentrancy-benign) (2 results) (Low)
 - [reentrancy-events](#reentrancy-events) (1 results) (Low)
 - [solc-version](#solc-version) (8 results) (Informational)
## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-0
[ThunderLoan.flashloan(address,IERC20,uint256,bytes)](src/protocol/ThunderLoan.sol#L182-L232) ignores return value by [receiverAddress.functionCall(abi.encodeCall(IFlashLoanReceiver.executeOperation,(address(token),amount,fee,msg.sender,params)))](src/protocol/ThunderLoan.sol#L214-L225)

src/protocol/ThunderLoan.sol#L182-L232


## events-maths
Impact: Low
Confidence: Medium
 - [ ] ID-1
[ThunderLoan.updateFlashLoanFee(uint256)](src/protocol/ThunderLoan.sol#L268-L274) should emit an event for: 
	- [s_flashLoanFee = newFee](src/protocol/ThunderLoan.sol#L273) 

src/protocol/ThunderLoan.sol#L268-L274


## reentrancy-benign
Impact: Low
Confidence: Medium
 - [ ] ID-2
Reentrancy in [ThunderLoan.flashloan(address,IERC20,uint256,bytes)](src/protocol/ThunderLoan.sol#L182-L232):
	External calls:
	- [assetToken.updateExchangeRate(fee)](src/protocol/ThunderLoan.sol#L205)
	- [assetToken.transferUnderlyingTo(receiverAddress,amount)](src/protocol/ThunderLoan.sol#L210)
	- [receiverAddress.functionCall(abi.encodeCall(IFlashLoanReceiver.executeOperation,(address(token),amount,fee,msg.sender,params)))](src/protocol/ThunderLoan.sol#L214-L225)
	State variables written after the call(s):
	- [s_currentlyFlashLoaning[token] = false](src/protocol/ThunderLoan.sol#L231)

src/protocol/ThunderLoan.sol#L182-L232


 - [ ] ID-3
Reentrancy in [ThunderLoan.flashloan(address,IERC20,uint256,bytes)](src/protocol/ThunderLoan.sol#L182-L232):
	External calls:
	- [assetToken.updateExchangeRate(fee)](src/protocol/ThunderLoan.sol#L205)
	State variables written after the call(s):
	- [s_currentlyFlashLoaning[token] = true](src/protocol/ThunderLoan.sol#L209)

src/protocol/ThunderLoan.sol#L182-L232


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-4
Reentrancy in [ThunderLoan.flashloan(address,IERC20,uint256,bytes)](src/protocol/ThunderLoan.sol#L182-L232):
	External calls:
	- [assetToken.updateExchangeRate(fee)](src/protocol/ThunderLoan.sol#L205)
	Event emitted after the call(s):
	- [FlashLoan(receiverAddress,token,amount,fee,params)](src/protocol/ThunderLoan.sol#L207)

src/protocol/ThunderLoan.sol#L182-L232


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-5
Pragma version[0.8.20](src/protocol/ThunderLoan.sol#L64) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/protocol/ThunderLoan.sol#L64


 - [ ] ID-6
Pragma version[0.8.20](src/interfaces/IFlashLoanReceiver.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/interfaces/IFlashLoanReceiver.sol#L2


 - [ ] ID-7
Pragma version[0.8.20](src/interfaces/IPoolFactory.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/interfaces/IPoolFactory.sol#L2


 - [ ] ID-8
Pragma version[0.8.20](src/protocol/OracleUpgradeable.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/protocol/OracleUpgradeable.sol#L2


 - [ ] ID-9
solc-0.8.20 is not recommended for deployment

 - [ ] ID-10
Pragma version[0.8.20](src/interfaces/ITSwapPool.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/interfaces/ITSwapPool.sol#L2


 - [ ] ID-11
Pragma version[0.8.20](src/interfaces/IThunderLoan.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/interfaces/IThunderLoan.sol#L2


 - [ ] ID-12
Pragma version[0.8.20](src/protocol/AssetToken.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/protocol/AssetToken.sol#L2



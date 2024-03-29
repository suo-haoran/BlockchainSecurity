# Aderyn Analysis Report

This report was generated by [Aderyn](https://github.com/Cyfrin/aderyn), a static analysis tool built by [Cyfrin](https://cyfrin.io), a blockchain security company. This report is not a substitute for manual audit or security review. It should not be relied upon for any purpose other than to assist in the identification of potential security vulnerabilities.
# Table of Contents

- [Summary](#summary)
  - [Files Summary](#files-summary)
  - [Files Details](#files-details)
  - [Issue Summary](#issue-summary)
- [Medium Issues](#medium-issues)
  - [M-1: Centralization Risk for trusted owners](#m-1-centralization-risk-for-trusted-owners)
  - [M-2: Using `ERC721::_mint()` can be dangerous](#m-2-using-erc721mint-can-be-dangerous)
- [Low Issues](#low-issues)
  - [L-1: Conditional storage checks are not consistent](#l-1-conditional-storage-checks-are-not-consistent)
  - [L-2: PUSH0 is not supported by all chains](#l-2-push0-is-not-supported-by-all-chains)
- [NC Issues](#nc-issues)
  - [NC-1: Missing checks for `address(0)` when assigning values to address state variables](#nc-1-missing-checks-for-address0-when-assigning-values-to-address-state-variables)
  - [NC-2: Functions not used internally could be marked external](#nc-2-functions-not-used-internally-could-be-marked-external)
  - [NC-3: Constants should be defined and used instead of literals](#nc-3-constants-should-be-defined-and-used-instead-of-literals)
  - [NC-4: Event is missing `indexed` fields](#nc-4-event-is-missing-indexed-fields)


# Summary

## Files Summary

| Key | Value |
| --- | --- |
| .sol Files | 8 |
| Total nSLOC | 461 |


## Files Details

| Filepath | nSLOC |
| --- | --- |
| src/interfaces/IFlashLoanReceiver.sol | 13 |
| src/interfaces/IPoolFactory.sol | 4 |
| src/interfaces/ITSwapPool.sol | 4 |
| src/interfaces/IThunderLoan.sol | 4 |
| src/protocol/AssetToken.sol | 65 |
| src/protocol/OracleUpgradeable.sol | 23 |
| src/protocol/ThunderLoan.sol | 176 |
| src/upgradedProtocol/ThunderLoanUpgraded.sol | 172 |
| **Total** | **461** |


## Issue Summary

| Category | No. of Issues |
| --- | --- |
| Critical | 0 |
| High | 0 |
| Medium | 2 |
| Low | 2 |
| NC | 4 |


# Medium Issues

## M-1: Centralization Risk for trusted owners

Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

- Found in src/protocol/ThunderLoan.sol [Line: 285](src/protocol/ThunderLoan.sol#L285)

	```solidity
	        return s_currentlyFlashLoaning[token];
	```

- Found in src/protocol/ThunderLoan.sol [Line: 298](src/protocol/ThunderLoan.sol#L298)

	```solidity
	
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 283](src/upgradedProtocol/ThunderLoanUpgraded.sol#L283)

	```solidity
	    function getFee() external view returns (uint256) {
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 289](src/upgradedProtocol/ThunderLoanUpgraded.sol#L289)

	```solidity
	
	```



## M-2: Using `ERC721::_mint()` can be dangerous

Using `ERC721::_mint()` can mint ERC721 tokens to addresses which don't support ERC721 tokens. Use `_safeMint()` instead of `_mint()` for ERC721.

- Found in src/protocol/AssetToken.sol [Line: 69](src/protocol/AssetToken.sol#L69)

	```solidity
	        _mint(to, amount);
	```



# Low Issues

## L-1: Conditional storage checks are not consistent

When writing `require` or `if` conditionals that check storage values, it is important to be consistent to prevent off-by-one errors. There are instances found where the same storage variable is checked multiple times, but the conditionals are not consistent.

- Found in src/protocol/AssetToken.sol [Line: 89](src/protocol/AssetToken.sol#L89)

	```solidity
	        uint256 newExchangeRate = s_exchangeRate * (totalSupply() + fee) / totalSupply();
	```

- Found in src/protocol/AssetToken.sol [Line: 91](src/protocol/AssetToken.sol#L91)

	```solidity
	        if (newExchangeRate <= s_exchangeRate) {
	```

- Found in src/protocol/ThunderLoan.sol [Line: 298](src/protocol/ThunderLoan.sol#L298)

	```solidity
	
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 289](src/upgradedProtocol/ThunderLoanUpgraded.sol#L289)

	```solidity
	
	```



## L-2: PUSH0 is not supported by all chains

Solc compiler version 0.8.20 switches the default target EVM version to Shanghai, which means that the generated bytecode will include PUSH0 opcodes. Be sure to select the appropriate EVM version in case you intend to deploy on a chain other than mainnet like L2 chains that may not support PUSH0, otherwise deployment of your contracts will fail.

- Found in src/interfaces/IFlashLoanReceiver.sol [Line: 2](src/interfaces/IFlashLoanReceiver.sol#L2)

	```solidity
	pragma solidity 0.8.20;
	```

- Found in src/interfaces/IPoolFactory.sol [Line: 2](src/interfaces/IPoolFactory.sol#L2)

	```solidity
	pragma solidity 0.8.20;
	```

- Found in src/interfaces/ITSwapPool.sol [Line: 2](src/interfaces/ITSwapPool.sol#L2)

	```solidity
	pragma solidity 0.8.20;
	```

- Found in src/interfaces/IThunderLoan.sol [Line: 2](src/interfaces/IThunderLoan.sol#L2)

	```solidity
	pragma solidity 0.8.20;
	```

- Found in src/protocol/AssetToken.sol [Line: 2](src/protocol/AssetToken.sol#L2)

	```solidity
	pragma solidity 0.8.20;
	```

- Found in src/protocol/OracleUpgradeable.sol [Line: 2](src/protocol/OracleUpgradeable.sol#L2)

	```solidity
	pragma solidity 0.8.20;
	```

- Found in src/protocol/ThunderLoan.sol [Line: 98](src/protocol/ThunderLoan.sol#L98)

	```solidity
	    uint256 private s_flashLoanFee; // 0.3% ETH fee
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 97](src/upgradedProtocol/ThunderLoanUpgraded.sol#L97)

	```solidity
	    uint256 private s_flashLoanFee; // 0.3% ETH fee
	```



# NC Issues

## NC-1: Missing checks for `address(0)` when assigning values to address state variables

Assigning values to address state variables without checking for `address(0)`.

- Found in src/protocol/OracleUpgradeable.sol [Line: 16](src/protocol/OracleUpgradeable.sol#L16)

	```solidity
	        s_poolFactory = poolFactoryAddress;
	```



## NC-2: Functions not used internally could be marked external



- Found in src/protocol/ThunderLoan.sol [Line: 276](src/protocol/ThunderLoan.sol#L276)

	```solidity
	    function isAllowedToken(IERC20 token) public view returns (bool) {
	```

- Found in src/protocol/ThunderLoan.sol [Line: 298](src/protocol/ThunderLoan.sol#L298)

	```solidity
	
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 272](src/upgradedProtocol/ThunderLoanUpgraded.sol#L272)

	```solidity
	        return address(s_tokenToAssetToken[token]) != address(0);
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 289](src/upgradedProtocol/ThunderLoanUpgraded.sol#L289)

	```solidity
	
	```



## NC-3: Constants should be defined and used instead of literals



- Found in src/protocol/ThunderLoan.sol [Line: 191](src/protocol/ThunderLoan.sol#L191)

	```solidity
	    {
	```

- Found in src/protocol/ThunderLoan.sol [Line: 192](src/protocol/ThunderLoan.sol#L192)

	```solidity
	        AssetToken assetToken = s_tokenToAssetToken[token];
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 190](src/upgradedProtocol/ThunderLoanUpgraded.sol#L190)

	```solidity
	        AssetToken assetToken = s_tokenToAssetToken[token];
	```



## NC-4: Event is missing `indexed` fields

Index event fields make the field more quickly accessible to off-chain tools that parse events. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

- Found in src/protocol/AssetToken.sol [Line: 31](src/protocol/AssetToken.sol#L31)

	```solidity
	    event ExchangeRateUpdated(uint256 newExchangeRate);
	```

- Found in src/protocol/ThunderLoan.sol [Line: 151](src/protocol/ThunderLoan.sol#L151)

	```solidity
	        uint256 mintAmount = (amount * assetToken.EXCHANGE_RATE_PRECISION()) / exchangeRate;
	```

- Found in src/protocol/ThunderLoan.sol [Line: 152](src/protocol/ThunderLoan.sol#L152)

	```solidity
	        emit Deposit(msg.sender, token, amount);
	```

- Found in src/protocol/ThunderLoan.sol [Line: 154](src/protocol/ThunderLoan.sol#L154)

	```solidity
	        uint256 calculatedFee = getCalculatedFee(token, amount);
	```

- Found in src/protocol/ThunderLoan.sol [Line: 156](src/protocol/ThunderLoan.sol#L156)

	```solidity
	        token.safeTransferFrom(msg.sender, address(assetToken), amount);
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 150](src/upgradedProtocol/ThunderLoanUpgraded.sol#L150)

	```solidity
	        uint256 mintAmount = (amount * assetToken.EXCHANGE_RATE_PRECISION()) / exchangeRate;
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 151](src/upgradedProtocol/ThunderLoanUpgraded.sol#L151)

	```solidity
	        emit Deposit(msg.sender, token, amount);
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 153](src/upgradedProtocol/ThunderLoanUpgraded.sol#L153)

	```solidity
	        uint256 calculatedFee = getCalculatedFee(token, amount);
	```

- Found in src/upgradedProtocol/ThunderLoanUpgraded.sol [Line: 155](src/upgradedProtocol/ThunderLoanUpgraded.sol#L155)

	```solidity
	        token.safeTransferFrom(msg.sender, address(assetToken), amount);
	```




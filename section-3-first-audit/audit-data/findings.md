### [H-1] Storing the password on-chain makes it visible to anyone, and no longer private

**Description:**  All data stored on-chain is visible to anyone, and can be read directly from the
blockchain. The `PasswordStore::s_password` variable is intended to be a private variable and only accessed through
the `PasswordStore::getPassword` function, which is intended to be only called by the owner of the contract.

We show one such method of reading any data off chain below.

**Impact:** Anyone can read the private password, severely breaking the functionality of the protocol.

**Proof of Concept:** (Proof of Code)

The below test case shows how anyone can read the password directly from the blockchain.

1. Spin up a new local chain
```sh
anvil
```
2. On a separate tab
```sh
make deploy
```
3. 1 represents the second slot of the storage, in this case, the private password field
```bash
cast storage 0x<address> 1 --rpc-url <anvil-url>
```
The output should be the password in hex.

4. Cast the output into string
```bash
cast parse-bytes32-string <output-hex> 
```
We should get `myPassword`

**Recommended Mitigation:** Due to this, the overall architecture of the contract should be rethought.
One could encrypt the password off-chain, and then store the encrypted password on-chain. This would 
require the user to remember another password off-chain to decrypt the password. However, you'd also
likely want to remove the view function as you wouldn't want the user to accidentally send a transaction
with the password that decrypts the password.

### [H-2] `PasswordStore::setPassword` has no access controls, meaning a non-owner could change the password

**Description:** The `PasswordStore::setPassword` function is set to be an `external` function, howeverm
the natspec of the function and overall purpose of the smart contract is that `This function allows only the
user to set a new password.`

```sol
    /*
@>   * @notice This function allows only the owner to set a new password.
     * @param newPassword The new password to set.
     */
     //? can a non-owner set the password?
     //? should a non-owner be able to set a password
     //@audit-high any user can set a password - Missing access control
    function setPassword(string memory newPassword) external {
        s_password = newPassword;
        emit SetNetPassword();
    }
```

**Impact:** Anyone can set/change the password of the contract, severely breaking the contract intended functionality.

**Proof of Concept:**

<details>

<summary>Code</summary>

```sol
    function test_anyone_can_test_password(address randomAddress) public {
        vm.assume(randomAddress != owner);
        vm.prank(randomAddress);
        string memory expectedPassword = "newPassword";
        passwordStore.setPassword(expectedPassword);

        vm.prank(owner);
        string memory actualPassword = passwordStore.getPassword();
        assertEq(actualPassword, expectedPassword);
    }
```

</details>

**Recommended Mitigation:** Add an access control conditional to the `setPassword` function.

```sol
if (msg.sender != s_owner) {
    revert PasswordStore_NotOwner();
}
```

### [I-1] The `PasswordStore::getPassword` natspec indicates a parameter that doesn't exist, causing the natspec to be incorrect

**Description:** 

```sol
    /*
     * @notice This allows only the owner to retrieve the password.
     //@audit there is no newPassword parameter - Suggested action: remove the below line
@>   * @param newPassword The new password to set.
     */
    function getPassword() external view returns (string memory) {
        if (msg.sender != s_owner) {  
            revert PasswordStore__NotOwner();
        }
        return s_password;
    }
```

**Impact:** the natspec is incorrect

**Recommended Mitigation:** Remove the incorrect natspec line.

```diff
    /*
     * @notice This allows only the owner to retrieve the password.
     //@audit there is no newPassword parameter - Suggested action: remove the below line
-    * @param newPassword The new password to set.
     */
    function getPassword() external view returns (string memory) {
        if (msg.sender != s_owner) {  
            revert PasswordStore__NotOwner();
        }
        return s_password;
    }
```

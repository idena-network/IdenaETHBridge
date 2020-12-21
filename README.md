# Idena ETH Bridge
- ability for holders to burn (destroy) their tokens
- a minter role that allows for token minting (creation)
- a pauser role that allows to stop all token transfers
- an admin role that allows to administrate the contract.
### Transact Methods
##### approve(address `spender` , uint256 `amount`)
 Sets `amount` as the allowance of `spender` over the caller's tokens.
##### transfer(uint256 `amount`)
Moves `amount` tokens from the caller's account to `recipient`.
##### transferFrom(`sender` account,`recipient` account,uint256 `amount`)
Transfers `amount` from `sender` to `recipient`
 Requirements:
`sender` and `recipient` cannot be the zero address.
- `sender` must have a balance of at least `amount`.
- the caller must have allowance for ``sender``'s tokens of at least `amount`

##### increaseAllowance(address `spender`,uint256 `addedValue`)
Atomically increases the allowance granted to `spender` by the caller.
Emits an `{Approval}` event indicating the updated allowance.
Requirements:
- `spender` cannot be the zero address

##### decreaseAllowance(address `spender`,uint256 `substractedValue`)
Atomically decreases the allowance granted to `spender` by the caller.
Emits an `{Approval}` event indicating the updated allowance.
Requirements:
- `spender` cannot be the zero address.
- `spender` must have allowance for the caller of at least `subtractedValue`.

##### mint(address `to` , uint256 `amount`)
Creates `amount` new tokens for `to`.
Requirements:
- the caller must have the `MINTER_ROLE`.

##### burn(uint256 `amount`)
Destroys `amount` tokens from the caller.
##### burnFrom(address `account` , uint256 `amount`)
 Destroys `amount` tokens from `account`, deducting from the caller's allowance.
 Requirements:
- the caller must have allowance for ``accounts``'s tokens of at least `amount`.

##### grantRole(byte32 `role` , address `account`)
Grants `role` to `account`.
Requirements:
- the caller must have ``role``'s admin role.

##### renounceRole(byte32 `role` , address `account`)
Revokes `role` from the calling account.
Requirements:
- the caller must be `account`.

##### revokeRole(byte32 `role` , address `account`)
Revokes `role` from `account`.
Requirements:
- the caller must have ``role``'s admin role.

##### pause
Pauses all token transfers.
Requirements:
- the caller must have the `PAUSER_ROLE`.

##### unpuase
Unpauses all token transfers.
Requirements:
- the caller must have the `PAUSER_ROLE`.

### Calls
##### getRoleAdmin(byte32 `role`)
Returns the admin role that controls `role`. See {grantRole} and {revokeRole}.
##### getRoleMember(byte32 `role`, uint256 `index`)
Returns one of the accounts that have `role`. `index` must be a value between 0 and {getRoleMemberCount}, non-inclusive.
##### getRoleMemberCount(byte32 `role`)
Returns the number of accounts that have `role`. Can be used together with {getRoleMember} to enumerate all bearers of a role.
##### hasRole(byte32 `role`, address `account`)
Returns `true` if `account` has been granted `role`.
##### DEFAULT_ADMIN_ROLE
Returns the default admin role.
##### MINTER_ROLE
Returns the minter role.
##### PAUSER_ROLE
Returns the pauser role
##### paused
Returns true if the contract is paused, and false otherwise.
##### allowance
Returns the remaining number of tokens that `spender` will be
allowed to spend on behalf of `owner` through {`transferFrom`}. This is zero by default.
##### balanceOf
Returns the amount of tokens owned by `account`.
##### decimals
Returns the number of decimals used to get its user representation.
For example, if `decimals` equals `2`, a balance of `505` tokens should
be displayed to a user as `5,05` (`505 / 10 ** 2`).
##### name
Returns the name of the token.
##### symbol
Returns the symbol of the token, usually a shorter version of the
##### totalBurnt
Returns the amount of burnt tokens.
##### totalMinted
 Returns the amount of minted tokens.
##### totalSupply
Returns the amount of tokens in existence.
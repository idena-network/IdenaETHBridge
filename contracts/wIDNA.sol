// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "./access/AccessControl.sol";
import "./GSN/Context.sol";
import "./token/ERC20/ERC20.sol";
import "./token/ERC20/ERC20Burnable.sol";


contract ERC20PresetMinter is Context, AccessControl, ERC20Burnable {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor(string memory name, string memory symbol) public ERC20(name, symbol) {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(MINTER_ROLE, _msgSender());
    }
    function mint(address to, uint256 amount) public virtual {
        require(hasRole(MINTER_ROLE, _msgSender()), "ERC20PresetMinter: must have minter role to mint");
        _mint(to, amount);
    }
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
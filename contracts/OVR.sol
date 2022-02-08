// contracts/OVR.sol
// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract OVR is ERC20Upgradeable, OwnableUpgradeable {
	address public rewards;

    modifier onlyRewards {
        require(msg.sender == rewards);
        _;
    }

	function initialize() public initializer {
		// Do intital.
	}

	function adminChangeRewards(address _rewards) onlyOwner public {
		rewards = _rewards;
	}

	function mintByRewards(address target, uint256 amount) public onlyRewards {
	  _mint(target, amount);
	}
}

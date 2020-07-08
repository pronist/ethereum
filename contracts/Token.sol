pragma solidity ^0.4.24;

import "./Faucet.sol";

contract Token is mortal {
    Faucet _faucet;

    // constructor () public {
    //     _faucet = new Faucet();
    // }

    constructor (address _f) {
        _faucet = Faucet(_f);
        _faucet.withdraw(0.1 ether);
    }

    function destroy() public onlyOwner {
        _faucet.destroy();
    }
}

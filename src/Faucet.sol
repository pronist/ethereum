pragma solidity ^0.4.21;

contract Faucet {
    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 0.1 ether);
        msg.sender.transfer(withdraw_amount);
    }
    function () public payable {}
}

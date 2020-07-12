pragma solidity ^0.4.24;

contract NameRegister {
    bool public unlocked = false; // slot[0]

    struct NameRecord {
        bytes32 name;
        address mappedAddress;
    }

    mapping(address => NameRecord) public registeredNameRecord; // slot[1]
    mapping(bytes32 => address) public resolve;

    function register(bytes32 _name, address _mappedAddress) public {
        NameRecord newRecord; // storage

        newRecord.name = _name; // slot[0]
        newRecord.mappedAddress = _mappedAddress; // slot[1]

        resolve[_name] = _mappedAddress;
        registeredNameRecord[msg.sender] = newRecord;

        /**
         * name -> 0x0000000000000000000000000000000000000000000000000000000000000001
         * Passwed
         */
        require(unlocked);
    }

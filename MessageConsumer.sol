pragma solidity ^0.4.19;

contract MessageConsumer {
    event MessageConsumed(address sender, uint message);

    function consume(uint _message) public {
        emit MessageConsumed(msg.sender, _message);
    }
}
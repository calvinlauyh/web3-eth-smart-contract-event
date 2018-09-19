pragma solidity ^0.4.19;

contract MessageConsumer {
    function consume(uint _message) public;
}

contract MessageProducer {
    function produce(uint _message) public {
        address messageConsumerAddress = 0xf7d8d9e67c88a5a86ed7070caeeb600531adc2f0;
        MessageConsumer messageConsumer = MessageConsumer(messageConsumerAddress);

        messageConsumer.consume(_message);
    }
}
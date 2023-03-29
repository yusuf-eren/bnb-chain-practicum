// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract StringAndBytes {
    string public greeting = "Greetings!";

    bytes public helloText = "Hello, World!";

    // We are converting bytes to string
    // It will be 0x48656c6c6f2c20576f726c6421
    // use the site below to check conversion
    // https://onlinestringtools.com/convert-bytes-to-string
    string public convertedText = string(helloText);
}
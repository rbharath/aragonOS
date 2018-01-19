pragma solidity ^0.4.18;

import "./IACL.sol";

interface IKernel {
    event SetApp(bytes32 indexed namespace, bytes32 name, bytes32 indexed id, address indexed app);

    function acl() public view returns (IACL);
    function hasPermission(address who, address where, bytes32 what, bytes how) view public returns (bool);

    function setApp(bytes32 namespace, bytes32 name, address app) public returns (bytes32 id);
    function getApp(bytes32 id) public view returns (address);
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

library Schema {
    /// @custom:storage-location erc7201:ecdysisxyz.erc1155.globalstate
    struct GlobalState {
        mapping(uint256 => mapping(address => uint256)) balances;
        mapping(address => mapping(address => bool)) operatorApprovals;
        mapping(uint256 => uint256) totalSupply;
        string uri;
    }
}

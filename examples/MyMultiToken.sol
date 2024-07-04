// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import { ERC1155Base } from "ecdysisxyz/erc1155/src/main/functions/ERC1155Base.sol";
import { Schema as ERC1155Schema } from "ecdysisxyz/erc1155/src/main/storage/Schema.sol";
import { Storage as ERC1155Storage } from "ecdysisxyz/erc1155/src/main/storage/Storage.sol";
import { Schema } from "../storage/Schema.sol";
import { Storage } from "../storage/Storage.sol";

contract MyMultiToken is ERC1155Base {
    constructor(string memory uri_) {
        ERC1155Schema.GlobalState storage s = ERC1155Storage.state();
        s.uri = uri_;
    }

    function mint(address to, uint256 id, uint256 amount, bytes memory data) external {
        _mint(to, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data) external {
        _mintBatch(to, ids, amounts, data);
    }

    function burn(address from, uint256 id, uint256 amount) external {
        require(from == msg.sender || isApprovedForAll(from, msg.sender), "ERC1155: caller is not token owner or approved");
        _burn(from, id, amount);
    }

    function burnBatch(address from, uint256[] memory ids, uint256[] memory amounts) external {
        require(from == msg.sender || isApprovedForAll(from, msg.sender), "ERC1155: caller is not token owner or approved");
        _burnBatch(from, ids, amounts);
    }

    function setURI(string memory newuri) external {
        _setURI(newuri);
    }
}

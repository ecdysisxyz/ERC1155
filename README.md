# ERC-1155 Multi-Token Standard Library

This project provides a reusable library for implementing ERC-1155 compliant multi-token contracts. It is primarily designed to be used as a library within the metacontract (mc) framework, enabling developers to easily integrate multi-token functionality into their projects.

## Overview

The library includes:

- Core ERC-1155 implementation (`ERC1155Base.sol`)
- Extended ERC-1155 functionality (`ERC1155.sol`)
- Storage schema for ERC-1155 tokens (`Schema.sol`)
- Storage access utilities (`Storage.sol`)
- An example implementation of a multi-token contract (`MyMultiToken.sol`)

## Usage

To use this library in your metacontract project:

1. Install the library using Forge:
   ```
   forge install ecdysisxyz/erc1155
   ```
2. Import the necessary contracts in your Solidity files:
   ```solidity
   import { ERC1155 } from "ecdysisxyz/erc1155/src/main/functions/ERC1155.sol";
   import { Schema as ERC1155Schema } from "ecdysisxyz/erc1155/src/main/storage/Schema.sol";
   import { Storage as ERC1155Storage } from "ecdysisxyz/erc1155/src/main/storage/Storage.sol";
   ```
3. Extend the `ERC1155` contract and implement your custom logic.

## Example

See `examples/MyMultiToken.sol` for a basic implementation of an ERC-1155 compliant multi-token contract using this library.

## Features

- Full ERC-1155 standard compliance
- Batch transfer and balance checking
- URI management for token metadata
- Modular and extensible design
- Compatible with the metacontract (mc) framework

## Development Status

This project is currently in active development and should be considered a beta release. While we strive for high-quality code, the implementation is evolving and has not yet undergone a formal audit. Users should exercise caution when integrating this library into production systems.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.


---

# Meta Contract Template
Welcome to the Meta Contract Template! This template is your fast track to smart contract development, offering a pre-configured setup with the [Meta Contract](https://github.com/metacontract/mc) framework and essential tools like the [ERC-7201 Storage Location Calculator](https://github.com/metacontract/erc7201). It's designed for developers looking to leverage advanced features and best practices right from the start.

## Quick Start
Ensure you have [Foundry](https://github.com/foundry-rs/foundry) installed, then initialize your project with:
```sh
$ forge init <Your Project Name> -t metacontract/template
```
This command sets up your environment with all the benefits of the meta contract framework, streamlining your development process.

## Features
- Pre-integrated with meta contract for optimal smart contract development with highly flexible upgradeability & maintainability.
- Includes ERC-7201 Storage Location Calculator for calculating storage locations based on ERC-7201 names for enhanced efficiency.
- Ready-to-use project structure for immediate development start.

For detailed documentation and further guidance, visit [Meta Contract Book](https://mc-book.ecdysis.xyz/).

Start building your decentralized applications with meta contract today and enjoy a seamless development experience!

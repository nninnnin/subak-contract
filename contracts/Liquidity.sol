// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

contract Liquidity {
  struct TokenPair {
    address inputToken;
    address outputToken;
  }

  mapping(address tokenId => uint256) liqudityBalances;

  function getLiquidity (string memory tokenId) view public returns (uint256 liqudityAmount) {
    // uint256 liquidityAmount = liquidityBalances[tokenId];

    // return liqudityAmount;

    return 10 * 8;
  }

  function addLiquidity (TokenPair memory tokenPair) public {

  }
}

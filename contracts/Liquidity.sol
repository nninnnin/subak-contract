// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

contract Liquidity {
  mapping(string tokenSymbol => uint256) liquidityBalances;

  struct TokenPair {
    string inputTokenSymbol;
    string outputTokenSymbol;
  }

  event Sync (uint256 reserve0, uint256 reserve1);

  function addLiquidity (TokenPair memory tokenPair, uint256 amount1, uint256 amount2) public {
    liquidityBalances[tokenPair.inputTokenSymbol] += amount1;
    liquidityBalances[tokenPair.outputTokenSymbol] += amount2;

    emit Sync(
      liquidityBalances[tokenPair.inputTokenSymbol],
      liquidityBalances[tokenPair.outputTokenSymbol]
    );
  }

  function getTokenLiquidity (string memory tokenId) view public returns (uint256 liqudityAmount) {
    return liquidityBalances[tokenId];
  }
}

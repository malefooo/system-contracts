# OVR System contracts

## Compile

```shell
npx hardhat compile
```

## Contracts

- OVR.sol: A upgradeable ERC20 token.
- staking: Staking related contracts.
    - Staking.sol: Staking contracts.
    - Consensus.sol: Some function called by consensus.
    - Coinbase.sol: Block based coinbase.
    - Rewards.sol: Rewards for staking.
    - Goverance.sol: Manage system contracts.
- interfaces
    - IConsensus.sol: Interface for consensus precompile.
    - IStaking.sol: Interface for staking.
    - IRewards.sol: Interface for rewards.



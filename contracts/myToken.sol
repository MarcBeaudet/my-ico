pragma solidity 0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract myToken is MintableToken {
    string public name;
    string public symbol;
    uint8 public decimals;
  constructor(string _name, string _symbol, uint8 _decimals)
  MintableToken() public {
      name = _name;
      symbol = _symbol;
      decimals = _decimals;
      owner = msg.sender;
  }
}

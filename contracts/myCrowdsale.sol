pragma solidity ^0.4.24;

import './myToken.sol';
import 'zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/validation/WhitelistedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/price/IncreasingPriceCrowdsale.sol';
import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract myCrowdsale is  MintedCrowdsale, WhitelistedCrowdsale, IncreasingPriceCrowdsale  {

  constructor
    (
       uint256 _openingTime,
       uint256 _closingTime,
       uint256 _rate,
       uint256 _initialRate,
       uint256 _finalRate,
       address _wallet,
       MintableToken _token
    )
    public
    Crowdsale(_rate, _wallet, _token)
    TimedCrowdsale(_openingTime, _closingTime)
    IncreasingPriceCrowdsale(_initialRate, _finalRate)
    WhitelistedCrowdsale() {
    }

}

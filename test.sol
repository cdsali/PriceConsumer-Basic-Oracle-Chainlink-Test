// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the Chainlink AggregatorV3Interface
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {

    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Polygon (sepolia)
    
     */
    constructor() {
        priceFeed = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
    }

    /**
     * Returns the latest price of EUR/USD
     */
    function getLatestPrice() public view returns (int) {
        (
           
            int price
            
        ) = priceFeed.latestRoundData();
        return price;
    }


}

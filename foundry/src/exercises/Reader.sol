// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IPoolManager} from "../interfaces/IPoolManager.sol";
import {TransientState} from "../libraries/TransientState.sol";

contract Reader {
    IPoolManager public immutable poolManager;

    constructor(address _poolManager) {
        poolManager = IPoolManager(_poolManager);
    }

    function getCurrencyDelta(address target, address currency)
        public
        view
        returns (int256 delta)
    {
        delta = TransientState.currencyDelta(poolManager, target, currency);
    }
}

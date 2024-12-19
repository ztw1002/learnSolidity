// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract ViewFunction {
    uint256 public value;

    // 只读取状态变量的值
    function getValue() public view returns (uint256) {
        return value;
    }

    // 只执行计算
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // 不是 view 函数，修改了状态变量 value 的值
    function setValue(uint256 newValue) public {
        value = newValue;
    }
}
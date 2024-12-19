// SPDX-License-Identifier: GPL-3.0
// 智能合约的许可证类型为 GPL-3.0


pragma solidity >=0.8.2 <0.9.0;
// 编译器版本范围

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

 // 

// 该智能合约提供了两个主要功能
// 1.store 函数：允许用户存储一个无符号的 256 位整数
// 2.retrieve 函数：允许用户检索存储的整数值

// 定义了一个名为 Storage 的智能合约
contract Storage {
    // 定义了一个状态变量 number，用于存储一个无符号的 256 位整数
    uint256 number;
    /**
     * @dev Store value in variable
     * @param num value to store
     */
    // 存储函数，接收一个无符号的 256 位整数 num 作为参数，并将其存储在状态变量 number 中
    // public 任何人都可以调用它来获取存储的值
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    // 检索函数，该函数是一个 view 函数，不会修改区块链上的状态
    // 该函数翻译状态变量 number 的值，也是 public 的
    function retrieve() public view returns (uint256){
        return number;
    }
}
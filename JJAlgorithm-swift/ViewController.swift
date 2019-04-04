//
//  ViewController.swift
//  JJAlgorithm-swift
//
//  Created by 吉祥 on 2019/4/4.
//  Copyright © 2019年 JX.ZHANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        /**
         1.给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
         示例:
         给定 nums = [2, 7, 11, 15], target = 9
         因为 nums[0] + nums[1] = 2 + 7 = 9
         所以返回 [0, 1]
         */
       //方法一：循环嵌套，时间复杂度O(n2),空间复杂度O(1)
        func twoSum(_ nums: [Int], _ target: Int) -> [Int]{
            let count = nums.count
            for i in 0...count {
                for j in (i+1)...count{
                    if nums[i] + nums[j] == target{
                        return [i,j]
                    }
                }
            }
            return[]
        }
        print(twoSum([2, 7, 11, 15], 9))
        //方法二：使用字典，时间复杂度O(n)，空间复杂度O(n)
        func sumTwo(_ nums: [Int], _ target: Int) -> [Int]{
            let count = nums.count
            var dic = [Int : Int]()
            for i in 0...count - 1 {
                dic[nums[i]] = i
            }
            for i in 0...count {
                let found = target - nums[i]
                if let j = dic[found], i != j{
                    return[i,j]
                }
            }
            return[]
        }
        print(sumTwo([2, 7, 11, 15], 9))
        
        
        
        
        
        
    }
}


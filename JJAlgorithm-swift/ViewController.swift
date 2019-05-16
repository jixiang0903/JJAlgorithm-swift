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
        /**
         2.给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。
         示例 1:
         输入: 123
         输出: 321
         注意:
         假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−231,  231 − 1]。请根据这个假设，如果反转后整数溢出那么就返回 0。
         */
        
        func reverse(_ x :Int) -> Int{
            var rev = 0
            var temp = x
            while temp != 0 {
                let pop = temp % 10
                temp = temp / 10
                rev = rev * 10 + pop
                if rev > Int32.max || (rev == (Int32.max / 10) && pop > 7){
                    return 0;
                }
                if rev < Int32.min || (rev == (Int32.min / 10) && pop < -8){
                    return 0;
                }
            }
            return rev
        }
        
        print(reverse(3045))
    }
}


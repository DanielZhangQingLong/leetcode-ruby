# Problem Link: https://leetcode.com/problems/sort-colors/
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
# Input: [2,0,2,1,1,0]
# Output: [0,0,1,1,2,2]
# 复杂度分析
# T(n) = O(n)
# S(n) = O(1)
def sort_colors(nums)
  count = Array.new(3, 0)
  for i in (0 ... nums.size)
    puts i
    count[nums[i]] += 1
  end

  index = 0
  for i in (0 ... count[0])
    nums[index] = 0
    index += 1
  end

  for i in (0 ... count[1])
    nums[index] = 1
    index += 1
  end

  for i in (0 ... count[2])
    nums[index] = 2
    index += 1
  end
  nums.inspect
end

def test
   nums = [2,0,2,1,1,0]
   puts sort_colors nums
end

test

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

# 使用三路快排思路
def sort_colors_2(nums)
  # 记录元素0和1之间的分界
  # arr[0 .. zero] == 0
  zero = -1
  # 记录元素1和2之间的分界
  # arr[two .. n-1] == 2
  two = nums.size 
  i = 0
  while(i < two)
    if nums[i] == 1
      i += 1
    elsif nums[i] == 2
      two -= 1
      nums[i], nums[two] = nums[two], nums[i]
    else
      raise 'nums must only include 0, 1, 2' if not nums[i].zero?
      zero += 1
      nums[zero], nums[i] = nums[i], nums[zero]
      i += 1
    end
  end
  nums.inspect
end


def test
   nums = [2,0,2,1,1,0]
   puts sort_colors_2 nums
end

test

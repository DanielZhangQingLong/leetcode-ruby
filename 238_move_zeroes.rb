# Problem Link: https://leetcode.com/problems/product-of-array-except-self/
# 238. Product of Array Except Self
# 第1次实现
# 复杂度分析
# T(n) = O(n)
# S(n) = O(1)
def move_zeroes(nums)
  j = 0;
  nums.each_with_index do |num, i|
    if num != 0
      nums[j] = nums[i]
      j += 1
    end
  end
  (j ... nums.length).each do |i|
    nums[i] = 0
  end
  nums
end

# 第2次实现
# 复杂度分析
# T(n) = O(n)
# S(n) = O(1)
def move_zeroes2(nums)
  j = 0
  for i in (0 ... nums.size)
    if nums[i] != 0
      # No need to swap i and j
      if i != j
        temp = nums[i]
        nums[i] = nums[j]
        nums[j] = temp
      end
      j += 1
    end
  end
end

def test
  nums = [4,2,4,0,0,3,0,5,1,0] #[0,1,0,3,12]
  move_zeroes2 nums 
end

puts test.inspect

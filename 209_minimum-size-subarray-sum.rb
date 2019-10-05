# @param {Integer} s
# @param {Integer[]} nums
# @return {Integer}
# Tn = On
# Sn = O1
def min_sub_array_len(s, nums)
  l = 0
  r = -1
  sum = 0
  ret = nums.size + 1
  while l < nums.size do
    if r+1 < nums.size && sum < s
      r += 1
      sum += nums[r]
    else
      sum -= nums[l]
      l += 1
    end
    if sum >= s
      # Get the minimum value of ret.
      ret = [r - l + 1, ret].min
    end
  end
  if ret == nums.size + 1
    0
  else
    ret
  end
end

puts min_sub_array_len(9, [2,3,1,2,4,3])
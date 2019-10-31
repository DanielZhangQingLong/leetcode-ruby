# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Tn = O(n)
# Sn = O(n)
def two_sum(nums, target)
  nums_index = {}
  nums.each_with_index do |n, i|
    to_find = target - n
    if nums_index[to_find]
      return [nums_index[to_find], i]
    end
    nums_index[n]  = i
  end
end

puts two_sum( [2, 7, 11, 15], 9).inspect
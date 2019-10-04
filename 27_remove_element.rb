# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
# Tn = On
# Sn = O1
def remove_element(nums, val)
  i = 0
  while (i < nums.length) do
    if nums[i] == val
      nums.delete_at i
      i = i - 1
    end
    i += 1
  end
  nums.length
end

nums =[0,1,2,2,3,0,4,2]
remove_element(nums, 2)
puts nums.inspect


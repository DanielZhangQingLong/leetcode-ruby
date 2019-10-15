# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
require 'set'
def intersection(nums1, nums2)
  set1 = Set.new(nums1)
  res = Set.new
  nums2.each do |n|
    res.add n if set1.include? n
  end
  res.to_a
end

puts intersection([1,2,2,1], [2,2])
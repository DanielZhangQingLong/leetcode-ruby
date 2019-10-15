# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
# Tn = On
# Sn = On
def intersect(nums1, nums2)
  map1 = {}
  nums1.each do |n|
    map1[n].nil? ? map1[n] = 1 : map1[n] += 1
  end
  map2 = {}
  nums2.each do |n|
    map2[n].nil? ? map2[n] = 1 : map2[n] += 1
  end
  ret = []
  map1.each_pair do |k, v|
    next if map2[k].nil?
    max_freq = [map2[k], v].min
    max_freq.times do
      ret << k
    end
  end
  ret
end

puts intersect( [4,9,5], [9,4,9,8,4])
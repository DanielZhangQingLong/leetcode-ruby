# @param {Integer[]} height
# @return {Integer}
# Tn = On
# Sn = O1
def max_area(height)
  raise 'Input is invalid' if height.size < 2
  l = 0
  r = height.size - 1
  result = 0
  while(l < r) do
    area =  (r - l) * [height[l], height[r]].min
    result = area if area > result
    if height[l] < height[r]
      l += 1
    else
      r -= 1
    end
  end
  result
end

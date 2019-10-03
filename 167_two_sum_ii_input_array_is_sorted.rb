# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
# Tn = O(n)
# Sn = O(1)
def two_sum(numbers, target)
  l = 1
  r = numbers.length
 while(r > l) do
   if numbers[l - 1] + numbers[r - 1] == target
     return [l, r]
   elsif numbers[l - 1] + numbers[r - 1] < target
      l += 1
    else
      r -= 1
    end
  end

 raise "Input numbers array has no result elements"
end

def test
   numbers = [5,25,75] #[2,7,11,15]
   target = 100
   puts two_sum(numbers, target).inspect
end

test

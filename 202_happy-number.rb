# @param {Integer} n
# @return {Boolean}
# Tn = On
# Sn = On
require 'set'
def is_happy(n)
  set = Set.new
  while(set.add?(n)) do
    res = 0
    while(n > 0) do
      tmp = n % 10
      res += tmp ** 2
      n /= 10
    end
    if res == 1
      return true
    else
      n = res
    end
  end
  false
end

puts is_happy(19)
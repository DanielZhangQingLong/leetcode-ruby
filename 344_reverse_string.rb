# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  return true if s.size == 0
  l = 0
  r = s.size - 1
  while(l <= r) do
    s[l], s[r] = s[r], s[l]
    l += 1
    r -= 1
  end
end

def test
  puts reverse_string('Daniel')
end

test

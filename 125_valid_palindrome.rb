# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[^a-z0-9]/i, '')
  return true if s.size == 0
  l = 0
  r = s.size - 1
  while(l <= r) do
    if s[l] != s[r]
      return false
    else
      l += 1
      r -= 1
    end
  end
  return true
end

def test
  s =  "A man, a plan, a canal: Panama"
  puts (is_palindrome s).inspect
end

test

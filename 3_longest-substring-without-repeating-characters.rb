# @param {String} s
# @return {Integer}
# Tn = On
# Sn = On
def length_of_longest_substring(s)
  l = 0
  r = -1
  ret = 0
  freq = {}
  while l < s.size && r + 1 < s.size do
    if freq[s[r+1]].nil?
      r += 1
      freq[s[r]] = 1
    else
      freq[s[l]] = nil
      l += 1
    end
    ret = [ret, r - l + 1].max
  end
  ret
end

# Tn = On
# Sn = On
def length_of_longest_substring2(s)
  l = 0
  r = -1
  ret = 0
  freq = Array.new 256, 0
  while l < s.size && r + 1 < s.size
    if freq[s[r+1].ord] == 0
      r += 1
      freq[s[r].ord] += 1
    else
      freq[s[l].ord] -= 1
      l += 1
    end
    ret = [ret, r - l + 1].max
  end
  ret
end

puts length_of_longest_substring2 "SSDFSDFefF"

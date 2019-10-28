# @param {String} s
# @return {String}
# Tn = O(n)
# Sn = O(m) m stands for unique char of s
def frequency_sort(s)
  freq = Hash.new(0)
  s.each_char do |c|
    freq[c] += 1
  end
  sorted = freq.sort_by {|k, v| -v}
  sorted.map {|c, f| c * f}.join
end

puts frequency_sort("tree")
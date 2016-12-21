# Given a string, find the first non-repeating character in it and return its index. If it doesn't, return -1.
#
# **Examples:**
#
# ```
# s = "leetcode"
# return 0.
#
# s = "loveleetcode"
# return 2.
# ```
#
# **Note:** You may assume the string contains only lowercase letters.

################
# Pseudocode:

# Make histogram hash of occurrences for string
# If adding to occurrences makes the value exceed 1, then delete it from the hash
# At the end, return the first key of the hash

def first_unique_character(str)
  histogram = Hash.new(0)

  str.each_char do |char|
    if histogram[char].zero?
      histogram[char] += 1
    else
      histogram.delete(char)
    end
  end

  if histogram.keys.first
    return str.index(histogram.keys.first)
  else
    return -1
  end
end

# Driver code:

s1 = "leetcode"
p first_unique_character(s1)

s2 = "loveleetcode"
p first_unique_character(s2)

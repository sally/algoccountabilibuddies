# Given a string, find the first non-repeating character in it and return its index. If it doesn't, return -1.
# s = "leetcode"
# return 0.
#
# s = "loveleetcode"
# return 2.

# pseudo code
# iterate through the string - O(n) time O(n) - space
# store character count in Hash
# return the first key with count == 1
# if no count == 1 return -1

def first_uniq_char(string)
  string_array = string.chars
  # make a hash with default value of 0
  char_hash = Hash.new(0)
  string_array.each do |char|
    char_hash[char] += 1
  end

  char_hash.delete_if{ |char, ct| ct > 1 }
  if char_hash.empty?
    p -1
  else
    p char_hash.first[0]
  end

end

# vroom vroom
first_uniq_char("loveleetcode")
# should return "v"
first_uniq_char("bobo")
# should return -1


# Big O Analysis
# Time - at least O(n) because we have to iterate through the string array once. Returning values from hash is just O(1)
# Space - O(n) because we are storing every character in a hash

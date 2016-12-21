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
  # make a hash with default value of 0
  char_hash = Hash.new(0)
  string.chars.each do |char|
    if char_hash[char].zero?
      char_hash[char] += 1
    else
      char_hash.delete(char)
    end
  end


  if char_hash.keys.first
    char_hash.keys.first
  else
    -1
  end

end

# vroom vroom
puts first_uniq_char("loveleetcode")
# should return "v"
puts first_uniq_char("bobo")
# should return -1


# Big O Analysis
# Time - at least O(n) because we have to iterate through the string array once. Returning values from hash is just O(1)
# Space - O(n) because we are storing every character in a hash


def better_return_first_uniq

end

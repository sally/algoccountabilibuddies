# Source: Leetcode

# https://leetcode.com/problems/first-unique-character-in-a-string/

# ----

# Given a string, find the first non-repeating character in it and return its index. If it doesn't, return -1.

# **Examples:**


# s = "leetcode"
# return 0.
#
# s = "loveleetcode"
# return 2.


# **Note:** You may assume the string contains only lowercase letters.

# loop through the string and count (returns how many occurrences of 's' exist)

class Solution(object):
    def firstUniqChar(self, s):
      for x in s:
        if s.count(x) == 1:
          return [s.index(x)][0]
      else:
        return -1

# should return 0
test_one = "leetcode"
uniq_char = Solution()
print(uniq_char.firstUniqChar(test_one))

# should return 2
test_two = "loveleetcode"
print(uniq_char.firstUniqChar(test_two))

# should return -1
test_three = "uugghh"
print(uniq_char.firstUniqChar(test_three))

# should return -1
test_four = ""
print(uniq_char.firstUniqChar(test_four))

# big o
# time complexity
    # answer: O(n)
# space complexity
    # answer: O(n)

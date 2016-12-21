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

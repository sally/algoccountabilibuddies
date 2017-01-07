# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution.
#
# Example:
#
# ```
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].
# ```

# preliminary thoughts:
  # brute force solution is O(N^2) to calculate every possible combination of sum, look for target number

# O(N) way?
  # build hash of occurrences of numbers while iterating through array
  # for k in array:
    # look for target_num - k in hash map

# You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
#
# Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
#
# e.g. [1, 3, 11, 7, 8, 1]
# returns 20 - the most we can make is from stealing 1, 11, and 8

# psuedocode

# take dynammic programming approach:
  # we do iterate through the houses, but the "action" taken (which is chosen from "rob" or "skip") is dependent on some "previous history"

# problem can be reworded as such:
  # given an array of non-negative integers, find the maximum sum of a subset, s.t. no element is adjacent to the other
    # => problem requires max sum
    # => index of any two elements in subset cannot be adjacent

# call our array A
# make array of N elements, call it S values initialized as 0
# => holds maximum so far at position i
# => S[i] is calculated iteratively
  # => S[i] = max(S[i-2], S[i-3]) + A[i]
# initialized as S[1] = A[0], S[2] = A[1]
# final result is max(S[N], S[N-1]), where N is # of elements in A

#
# Task description
# A non-empty zero-indexed array A consisting of N integers is given.
#
# A permutation is a sequence containing each element from 1 to N once, and only once.
#
# For example, array A such that:
#
#     A[0] = 4
#     A[1] = 1
#     A[2] = 3
#     A[3] = 2
# is a permutation, but array A such that:
#
#     A[0] = 4
#     A[1] = 1
#     A[2] = 3
# is not a permutation, because value 2 is missing.
#
# The goal is to check whether array A is a permutation.
#
# Write a function:
#
# def solution(a)
# that, given a zero-indexed array A, returns 1 if array A is a permutation and 0 if it is not.
#
# For example, given array A such that:
#
#     A[0] = 4
#     A[1] = 1
#     A[2] = 3
#     A[3] = 2
# the function should return 1.
#
# Given array A such that:
#
#     A[0] = 4
#     A[1] = 1
#     A[2] = 3
# the function should return 0.
#
# Assume that:
#
# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [1..1,000,000,000].
# Complexity:
#
# expected worst-case time complexity is O(N);
# expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
#
# Elements of input arrays can be modified.

# Idea:
  # have an array B of length N where N is the length of the input array A, s.t. it keeps track of the occurrences for each number. B[k] should return the number of times that k + 1 has occurred in the input array.
  # for x in array A:
    # check if x falls within 1 <= x <= A.length
    # look at the entry in B[x-1]. if it is already 1, return false. if it is 0, add 1.
  # if it finishes the iteration, then return true

  def solution(a)
    present = [0] * a.length

    for k in 0...a.length do
      if !(1..a.length).include?(a[k])
        return 0
      else
        if present[a[k]-1].zero?
          present[a[k]-1] += 1
        else
          return 0
        end
      end
    end

    return 1
  end

# Given `numRows`, generate the first `numRows` of Pascal's triangle.
#
# For example, given `numRows = 5`,
#
# Return
#
# ```
# [
#      [1],
#     [1,1],
#    [1,2,1],
#   [1,3,3,1],
#  [1,4,6,4,1]
# ]
# ```

# pseudocode

# let N = input #
# let A = [] (pascal's triangle array to return)
# let C = 0 (for counter)

# until C = N:
  # if A is empty:
    # push [1] to A
    # C = C + 1
  # else:
    # let pre-layer be the element A[C-1]
    # let new-layer = [] (array to push into A)
    # iterate through pre-layer:
      # look at iteratee's index
        # if it is 0:
          # push 1 into new-layer
        # if it is pre-layer's length - 1:
          # push 1 into new-layer
        # else:
          # push sum of iteratee and element in pre-layer preceding iteratee
    # push new-layer into A
    # C = C + 1

# return A

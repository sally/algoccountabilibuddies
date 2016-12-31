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
# initialize empty pascal's triangle array to return, call it A
# initialize counter C at 0

# until C = N:
  # if A is empty:
    # push [1] to A
    # C = C + 1
  # else:
    # look at element in index C - 1 in A, call it pre-layer
    # initialize array to push into A, call it new-layer
    # iterate through pre-layer:
      # look at iteratee's index
        # if it is 0:
          # push 1 into new-layer
        # if it is pre-layer's length - 1:
          # push 1 into new-layer
        # else:
          # push sum of iteratee and element in pre-layer preceding iteratee
    # push new-layer into A

# return A

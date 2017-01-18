# Idea:
# Kanade's algorithm looks for all positive contiguous subarrays (max_ending_here variable below keeps track of this), and keeps track of the maximum sum of the contiguous subarrays among all positive segments (max_so_far variable below keeps track of this).

# Initialize:
  # max_ending_here = 0
  # max_so_far = 0
# For k in array:
  # max_ending_here = [0, max_ending_here + k].max
  # max_so_far = [max_so_far, max_ending_here].max
# return max_so_far

def max_slice_sum(array)
  max_ending_here = max_so_far = 0

  for k in 0...array.length
    max_ending_here = [0, max_ending_here + array[k]].max
    max_so_far = [max_so_far, max_ending_here].max
  end

  max_so_far
end

# The algorithm can also be modified to keep track of the starting and ending indices of the maximum sub array:
  # note that the bounds change every time max ending here dips back to 0.
  # we keep track of 4 extra variables:
    # slice start idx, slice end idx
    # max start idx, max end idx
  # whenever max_ending_so_far is updated to be 0, we reset slice start and slice end to be the current index
  # whenever max_ending_so_far is updated to be max_ending_so_far + array[k], we advance slice_end by one
  # whenever max_so_far is overtaken by max_ending_so_far, update max start idx and max end idx to be slice start idx and slice end idx respectively

# **A variation of the problem that does not allow for zero-length arrays to be submitted, in the case that the entire array consists of negative numbers, can be solved by the following (Credit to Wikipedia):

def max_slice_sum(array)
  max_ending_here = max_so_far = array.first

  for k in 0...array.length do
    max_ending_here = [array[k], max_ending_here + array[k]].max
    max_so_far = [max_ending_here, max_so_far].max
  end
end

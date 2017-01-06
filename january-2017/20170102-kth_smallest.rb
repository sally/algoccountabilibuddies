# Source: CTCI
#
# Find the kth smallest number in an array of size `N` with `O(N)` time complexity.

# pseudocode:
# initialize max-heapified-array
# iterate through array:
# for each value, say x:
  # insert it into the max-heapified array according to rules for inserting into a max heap (percolate up)
# extract max from max-heapified array k-1 times
# get max from max-heapified array and return it

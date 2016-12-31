# Write a function for doing an in-place shuffle of an array.
#
# The shuffle must be "uniform," meaning each item in the original array must have the same probability of ending up in each spot in the final array.
#
# Assume that you have a function `get_random(floor, ceiling)` for getting a random integer that is >= floor and <= ceiling.

# pseudocode

# iterate over array to shuffle:
# for each iteratee, calculate x = get_random(iteratee_index, length - 1)
  # swap the iteratee with item at index x

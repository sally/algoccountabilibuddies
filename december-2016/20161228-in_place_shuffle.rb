# Source: Interview Cake
#
# Write a function for doing an in-place shuffle of an array.
#
# The shuffle must be "uniform," meaning each item in the original array must have the same probability of ending up in each spot in the final array.
#
# Assume that you have a function `get_random(floor, ceiling)` for getting a random integer that is >= floor and <= ceiling.

# assign a new random index for each value in the original array (that hasn't been assigned already)
# then swap everything with the old array


def in_place_shuffle(array)
  if array.length <= 1
       array
   end

   last_index = array.length - 1
   (0..array.length - 1).each do |index|

       random_index = rand(index..last_index)

       # swap the two if they arent the same
       if random_index != index
           array[index], array[random_index] = array[random_index], array[index]
       end
   end
   array
end

# vroom

array = [1,2,3,4,5,6,7,8,9,10]
p in_place_shuffle(array)
array1 = [1]
p in_place_shuffle(array1)

# ruby also has array.sort_by {rand} and .shuffle
# p array.sort_by {rand}
# p array.shuffle

# 1 iteration for O(n) time and O(1) space to store only a few values

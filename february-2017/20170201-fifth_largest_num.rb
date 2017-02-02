# Find the 5th largest element in an unsorted array of integers
# input: [0,1,2,3,4,5,6,7,8,9].shuffle


# Pseudocode:
# 1. sort array, perhaps through helper method
# 2. sort in such a way that the array goes from biggest to smallest
# 3. return fifth element of the sorted array
# 4. otherwise it can be sorted from smallest --> largest and return ary[-5]


# this uses bubble sort which at worst case is a big O time complexity of n^2 but space complexity of O(1).
# it can also be moved into a helper method of it's own

def fifth_largest_num(unsorted_array)
  length = unsorted_array.length
  loop do
    was_there_a_swap = false
    (length-1).times do |i|
      if unsorted_array[i] > unsorted_array[i+1]
        unsorted_array[i], unsorted_array[i+1] = unsorted_array[i+1], unsorted_array[i]
        was_there_a_swap = true
      end
    end
    break if not was_there_a_swap
  end
  unsorted_array[-5]
  # merge_sort(unsorted_array)[-5]
end

def merge_sort(array)
  return array if array.length <= 1
  mid = array.length/2
  left = array[0, mid]
  right = array[mid, array.length]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted_array = []
  until left.empty? || right.empty?
    if left.first < right.first
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end
  sorted_array.concat(left).concat(right)
end

###########################
## ｄｒｉｖｅｒ　ｃｏｄｅ ####
###########################
array = [0,1,2,3,4,5,6,7,8,9].shuffle
puts fifth_largest_num(array)

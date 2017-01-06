# Source: CTCI
#
# Find the kth smallest number in an array of size `N` with `O(N)` time complexity.

# pseudocode:
# initialize min-heapified-array
# iterate through array:
# for each value, say x:
  # insert it into the min-heapified array according to rules for inserting into a min heap (percolate up)
# extract min from min-heapified array k-1 times
# get min from min-heapified array and return it

def insert_into_min_heap(min_heap, element)
  min_heap << element
  current_index = min_heap.length

  while current_index > 1 && element < min_heap[(current_index / 2) - 1]
    larger_element = min_heap[(current_index / 2) - 1]

    min_heap[(current_index / 2) - 1] = element
    min_heap[current_index - 1] = larger_element

    current_index = (current_index / 2)
  end

  min_heap
end



def get_kth_smallest(array, k)
  min_heapified_array = []

  array.each do |number|
    insert_into_min_heap(min_heapified_array, number)
  end
end

p insert_into_min_heap([15, 30, 40], 10)

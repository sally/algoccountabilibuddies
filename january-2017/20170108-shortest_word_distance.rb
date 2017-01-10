# Source: [Leetcode](https://tonycao.gitbooks.io/leetcode-locked/content/LeetCode%20Locked/c1.4.html)
#
# Given a list of words and two words word1 and word2, return the shortest distance between these two words in the list.
#
# For example, Assume that words = ["practice", "makes", "perfect", "coding", "makes"].
#
# Given word1 = "coding", word2 = "practice", return 3. Given word1 = "makes", word2 = "coding", return 1.

# idea: create indices hash, keys are words and values are arrays of indices
# find shorest distance between 2 numbers in 2 sorted arrays
# if two words are equal, then problem becomes finding the shortest distance between two distinct numbers in array

def make_indices_hash(words)
  indices_hash = Hash.new {|hash, key| hash[key] = []}

  for k in 0...words.length do
    indices_hash[words[k]] << k
  end

  indices_hash
end

def find_smallest_difference(nums)
  raise "Please enter an array with more than one number to find the smallest difference between two distinct numbers in an array." if nums.length < 2

  smallest_difference = Float::INFINITY

  for k in 0...nums.length do
    break if k == nums.length - 1

    smallest_difference = [smallest_difference, (nums[k] - nums[k+1]).abs].min
  end

  smallest_difference
end

def minimal_differences_bw_sorted(array1, array2)
  i = 0
  j = 0

  shortest_distance = Float::INFINITY

  while i < array1.length && j < array2.length
    if array1[i] == array2[j]
      return 0
    end

    shortest_distance = [shortest_distance, (array1[i] - array2[j]).abs].min

    if array1[i] < array2[j]
      i += 1
    else
      j += 1
    end
  end

  shortest_distance
end

array1 = [3, 27, 45, 68, 70, 81, 99]
array2 = [9, 16, 25, 35, 84]

p minimal_differences_bw_sorted(array1, array2)
# => minimum difference is 2 (27-25)

array3 = [12, 34, 57, 61, 69, 80]
array4 = [27, 39, 48, 51, 79]

p minimal_differences_bw_sorted(array3, array4)
# => minimum difference is 1 (80-79)

def shortest_distance(words, word1, word2)
  indices_hash = make_indices_hash(words)

  if word1 == word2
    return find_smallest_difference(indices_hash[word1])
  end

  minimal_differences_bw_sorted(indices_hash[word1], indices_hash[word2])
end

p shortest_distance(["practice", "makes", "perfect", "coding", "makes"], "coding", "practice")
# => returns 3

p shortest_distance(["practice", "makes", "perfect", "coding", "makes"], "makes", "coding")
# => returns 1

p shortest_distance(["practice", "makes", "perfect", "coding", "makes"], "makes", "makes")
# => returns 3

# big o analysis:
  # making indices hash is O(N), space is also O(N)
  # finding smallest distance b/w any two elements in same array is O(N)
  # finding minimal difference between two sorted arrays is O(M+P), where M is length of first array, P is length of second array
  # but M and P are both <= N
  # hence time and space complexity are both O(N)

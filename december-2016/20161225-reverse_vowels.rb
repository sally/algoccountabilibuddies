# Source: [Leetcode](https://leetcode.com/problems/reverse-vowels-of-a-string/)
#
# Write a function that takes a string as input and reverse only the vowels of a string.
#
# Example 1:
# Given s = "hello", return "holle".
#
# Example 2:
# Given s = "leetcode", return "leotcede".

def reverse_vowels(string)
  vowels = "aeiouAEIOU".chars
  vowels_in_string = string.scan(/#{vowels}/)
  # string_arr = string.chars
  # string_arr.each_with_index do |char, idx|
  #   if vowels.include?(char)
  #     string_arr[idx] = vowels_in_string.pop
  #     return string_arr.join('')
  #   else
  #     return string
  #   end
  # end

  # refactored using gsub
  string.gsub(/[aeiouAEIOU]/) { vowels_in_string.pop }
end

p reverse_vowels("hello")
p reverse_vowels("leetcode")
p reverse_vowels("qwrty")
p reverse_vowels("aEiOu")

# Big O
# Up to O(2n) time because we traverse the entire string twice
# Potentially O(2n) space because we are storing the entire string in an array + the vowels in another array

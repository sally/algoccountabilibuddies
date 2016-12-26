# Write a function that takes a string as input and reverse only the vowels of a string.
#
# Example 1:
# Given s = "hello", return "holle".
#
# Example 2:
# Given s = "leetcode", return "leotcede".
#
# Note:
# The vowels does not include the letter "y".

# pseudocode
# have two pointers, one starting at the beginning of the string, one at the end
# until the two pointers are pointing at the same index,
  # start iterating forwards through the string until hit a vowel
    # when hit vowel, start iterating backwards through the string until also hit a vowel

    # if this happens, then swap the two indices and continue advancing the first pointer

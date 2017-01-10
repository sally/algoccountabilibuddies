# Source: GeeksforGeeks
#
# Boggle (Find all possible words in a board of characters)
# Given a dictionary, a method to do lookup in dictionary and a M x N board where every cell has one character. Find all possible words that can be formed by a sequence of adjacent charactersNote that we can move to any of 8 adjacent characters, but a word should not have multiple instances of same cell.
#
# Example:
#
# ```
# Input: dictionary[] = {"GEEKS", "FOR", "QUIZ", "GO"};
#        boggle[][]   = {{'G','I','Z'},
#                        {'U','E','K'},
#                        {'Q','S','E'}};
#       isWord(str): returns true if str is present in dictionary
#                    else false.
#
# Output:  Following words of dictionary are present
#          GEEKS
#          QUIZ
# ```

# idea: iterate through 2d matrix, if run into first letter of one of the dictionary words, then begin a breadth first search for the rest of the letters in that word
  # caveats: can't backtrack (means should keep another matrix keeping track of coordinates visited for each breadth first search)

# utility functions:
  # helper function to check whether it is safe or not to add a coordinate to dfs queue (must be a valid coordinate, i.e. doesn't exceed or fall below the dimensions of the matrix)
  # helper function to do the dfs (has directions to go in)

# for each word in dictionary:
  # iterate through boggle and look for first character
  # if found first character:
    # start depth first search for rest of characters

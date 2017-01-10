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

def boggle_solver(dictionary, boggle)
  words_present = []

  rows = boggle.length
  columns = boggle.first.length

  for i in 0...rows do
    for j in 0...columns do
      for k in 0...dictionary.length do
        if boggle[i][j] == dictionary[k][0]
          if dfs_for_letters(boggle, dictionary[k], i, j) == true
            words_present.push(dictionary[k])
          end
        end
      end
    end
  end

  words_present
end

def dfs_for_letters(boggle, word, row, column, visited = Array.new(boggle.length) { Array.new(3) { false }})
  return true if word.length == 1

  row_directions    = [-1, -1, -1,  0,  0,  1, 1, 1]
  column_directions = [-1,  0,  1, -1,  1, -1, 0, 1]

  visited[row][column] = true

  for n in 0...8 do
    if is_safe?(boggle, word, row + row_directions[n], column + column_directions[n], visited)
      return true if dfs_for_letters(boggle, word[1..-1], row + row_directions[n], column + column_directions[n], visited) == true
    end
  end
end

def is_safe?(boggle, word, row, column, visited)
  row >= 0 && row < boggle.length && column >= 0 && column < boggle.first.length && !visited[row][column] && boggle[row][column] == word[1]
end

##################

# driver code:

boggle1 = [
            ['G', 'I', 'Z'],
            ['U', 'E', 'K'],
            ['Q', 'S', 'E']
          ]

dictionary1 = ['GEEKS', 'FOR', 'QUIZ', 'GO']

p boggle_solver(dictionary1, boggle1)
# => returns ['GEEKS', 'QUIZ']

boggle2 = [
            ['E', 'A', 'M', 'S'],
            ['E', 'G', 'I', 'Z'],
            ['E', 'U', 'E', 'K'],
            ['U', 'Q', 'S', 'E']
          ]

dictionary1 = ['GEEKS', 'FOR', 'QUIZ', 'GO']

p boggle_solver(dictionary1, boggle2)
# => returns ['GEEKS', 'QUIZ']

boggle3 = [
            ['O', 'A', 'A', 'N'],
            ['E', 'T', 'R', 'I'],
            ['I', 'H', 'K', 'R'],
            ['I', 'F', 'L', 'V']
          ]

dictionary2 = ['OAT', 'SYSTEM', 'RAIN', 'RAM', 'RATE', 'EARTH', 'TRAIN', 'IRATE']

p boggle_solver(dictionary2, boggle3)

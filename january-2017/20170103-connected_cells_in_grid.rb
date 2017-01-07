# Given an `n*m` matrix, find and print the number of cells in the largest region in the matrix, where region is defined as given in the source link. Note that there may be more than one region in the matrix.

# pseudocode

# idea: iterate through matrix, when you run into a 1, do a depth first search from that coordinate to find all 1s surrounding it - keep count of the ones that are visited - mark those as visited

# initialize matrix of same dimensions as input matrix to keep track of "visited/unvisited" coordinates

# begin traversing array, row by row:
  # if encountered 1 that is NOT visited, do DFS for all 1s around it that make up an island
# helper functions:
  # check whether a coordinate should be added to the stack of coordinates for DFS
  # a method that provides all possible directions to check while DFSing (8 directions)

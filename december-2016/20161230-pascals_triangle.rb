# Source: [Leetcode](https://leetcode.com/problems/pascals-triangle/)
#
# Given `numRows`, generate the first `numRows` of Pascal's triangle.

# make numRows rows of all 1s
# replace

def gen_triangle(numRows)
  triangle = []
  (0..numRows-1).each do |i|
    triangle.push([1]*(i+1))
      if i > 1
        (1..i-1).each do |j|
          triangle[i][j]=triangle[i-1][j-1]+triangle[i-1][j]
        end
      end
  end
  triangle
end

p gen_triangle(5)

# O(n^2) time
# O(n) space

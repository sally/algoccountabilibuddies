# Source: [Leetcode](https://leetcode.com/problems/house-robber/)
#
# You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
#
# Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
#
# e.g. [1, 3, 11, 7, 8, 1]
# returns 20 - the most we can make is from stealing 1, 11, and 8


# Store the max sum between sets of 2 or 3 adjacent houses
# And scan till the end of the array to tally up the total

def grab_money(house_array)

  max_three = max_two = pre = 0

  for curr_house in house_array
    max_three = max_two
    max_two = pre
    pre = [max_three + curr_house, max_two + curr_house].max
  end
  return [max_two, pre].max
end

# Doesn't quite work yet, it is scanning one step too early so is adding every value in the array
p grab_money([1, 7, 9, 4])
